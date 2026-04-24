#!/bin/bash
# trace_wallet.sh — Trace a wallet's full transaction history on Ethereum
# Usage: ./trace_wallet.sh <wallet_address> [output_file]

set -e

WALLET="${1:?Usage: $0 <wallet_address> [output_file]}"
OUTPUT="${2:-${WALLET}_tx_history.json}"
RPC_URL="${RPC_URL:-https://rpc.ankr.com/eth}"

echo "[*] Tracing wallet: $WALLET"
echo "[*] Output: $OUTPUT"
echo "[*] RPC: $RPC_URL"

# Fetch transaction list from Blockscout
echo "[*] Fetching transaction list from Blockscout..."
curl -s "https://eth.blockscout.com/api?module=account&action=txlist&address=${WALLET}&sort=desc&apikey=" \
  -o "${OUTPUT}" || {
    echo "[!] Blockscout failed, falling back to RPC..."
    # Fallback: use eth_getLogs via RPC
    curl -s -X POST "$RPC_URL" \
      -H "Content-Type: application/json" \
      -d "{\"jsonrpc\":\"2.0\",\"method\":\"eth_getLogs\",\"params\":[{\"address\":\"${WALLET}\",\"fromBlock\":\"0x0\",\"toBlock\":\"latest\"}],\"id\":1}" \
      -o "${OUTPUT}"
  }

TX_COUNT=$(jq '.result | length' "$OUTPUT" 2>/dev/null || echo "0")
echo "[+] Retrieved $TX_COUNT transactions"

# Extract unique addresses interacted with
echo "[*] Mapping wallet interactions..."
jq -r '.result[] | .to' "$OUTPUT" 2>/dev/null \
  | grep -v "^$" \
  | sort -u \
  > "${OUTPUT%.json}_interactions.txt"

echo "[+] Unique addresses: $(wc -l < "${OUTPUT%.json}_interactions.txt")"
echo "[*] Saved to: ${OUTPUT%.json}_interactions.txt"
