#!/bin/bash
# get_transfers.sh — Get all transfer events for an ERC-1155 contract
# Usage: ./get_transfers.sh <contract_address> [token_id] [output_file]

set -e

CONTRACT="${1:?Usage: $0 <contract_address> [token_id] [output_file]}"
TOKEN_ID="${2:-}"
OUTPUT="${3:-${CONTRACT}_transfers.json}"
RPC_URL="${RPC_URL:-https://rpc.ankr.com/eth}"

echo "[*] Fetching transfers for contract: $CONTRACT"

# ERC-1155 TransferSingle topic
TRANSFER_TOPIC="0xc3d58168c5ae7397731d063d5bbf3ad97e89b1c00e1c5e7c9d3e7d8d8f3c3e7d8"

# Build filter params
if [ -n "$TOKEN_ID" ]; then
  # Filter by specific token ID
  DATA="{\"address\":\"${CONTRACT}\",\"fromBlock\":\"0x0\",\"toBlock\":\"latest\",\"topics\":[\"${TRANSFER_TOPIC}\"]}"
else
  # Get all transfers
  DATA="{\"address\":\"${CONTRACT}\",\"fromBlock\":\"0x0\",\"toBlock\":\"latest\",\"topics\":[\"${TRANSFER_TOPIC}\"]}"
fi

echo "[*] Querying RPC: $RPC_URL"
curl -s -X POST "$RPC_URL" \
  -H "Content-Type: application/json" \
  -d "{\"jsonrpc\":\"2.0\",\"method\":\"eth_getLogs\",\"params\":[$DATA],\"id\":1}" \
  -o "$OUTPUT"

EVENT_COUNT=$(jq '.result | length' "$OUTPUT" 2>/dev/null || echo "0")
echo "[+] Retrieved $EVENT_COUNT transfer events"
echo "[*] Saved to: $OUTPUT"
