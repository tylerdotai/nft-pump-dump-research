#!/bin/bash
# decode_tx.sh — Decode a transaction's input data and event logs
# Usage: ./decode_tx.sh <tx_hash> [output_file]

set -e

TX_HASH="${1:?Usage: $0 <tx_hash> [output_file]}"
OUTPUT="${2:-${TX_HASH}_decoded.json}"
RPC_URL="${RPC_URL:-https://rpc.ankr.com/eth}"

echo "[*] Decoding transaction: $TX_HASH"
echo "[*] Output: $OUTPUT"

# Get transaction receipt
echo "[*] Fetching transaction receipt..."
RECEIPT=$(curl -s -X POST "$RPC_URL" \
  -H "Content-Type: application/json" \
  -d "{\"jsonrpc\":\"2.0\",\"method\":\"eth_getTransactionReceipt\",\"params\":[\"${TX_HASH}\"],\"id\":1}")

echo "$RECEIPT" | jq '.' > "${OUTPUT}"

# Get decoded input (4-byte selector lookup)
echo "[*] Fetching transaction..."
TX=$(curl -s -X POST "$RPC_URL" \
  -H "Content-Type: application/json" \
  -d "{\"jsonrpc\":\"2.0\",\"method\":\"eth_getTransactionByHash\",\"params\":[\"${TX_HASH}\"],\"id\":1}")

INPUT=$(echo "$TX" | jq -r '.result.input' 2>/dev/null)

if [ "$INPUT" != "null" ] && [ -n "$INPUT" ]; then
  SELECTOR="${INPUT:0:10}"
  echo "[*] Function selector: $SELECTOR"
  
  # Common selectors
  case "$SELECTOR" in
    "0xa9059cbb") echo "[+] Function: transfer(address,uint256)" ;;
    "0x23b872dd") echo "[+] Function: transferFrom(address,address,uint256)" ;;
    "0x42842e0e") echo "[+] Function: safeTransferFrom(address,address,uint256)" ;;
    "0xf242432a") echo "[+] Function: safeTransferFrom(address,address,uint256,uint256,bytes)" ;;
    "0x6a627842") echo "[+] Function: mint(address)" ;;
    "0x40c10f19") echo "[+] Function: mint(address,uint256)" ;;
    "0xa35cdcac") echo "[+] Function: burn(address,uint256)" ;;
    *) echo "[?] Unknown selector: $SELECTOR" ;;
  esac
fi

echo "[+] Transaction details saved to: $OUTPUT"
echo ""
echo "[*] Event logs:"
jq -r '.result.logs[] | "  Log: \(.address) | \(.topics[0])"' "$OUTPUT" 2>/dev/null || echo "  (no logs)"
