# Blockchain Analyzer Skill

Deep investigative blockchain analysis for tracing wallets, decoding smart contract interactions, and identifying pump-and-dump patterns in NFT and crypto projects.

## Capabilities

1. **On-chain wallet tracing** — trace any Ethereum wallet's full history
2. **Smart contract decoding** — interpret Solidity function calls, event logs
3. **NFT collection analysis** — ERC-721/ERC-1155 transfer tracking
4. **Cross-wallet network mapping** — identify connected wallets and fund flows
5. **Pump-and-dump pattern detection** — identify classic manipulation signatures
6. **OSINT integration** — link blockchain activity to social media identities

## API Endpoints (see config/api_endpoints.yaml)

## Wallet Tracing Workflow

1. Identify target wallet address
2. Query Blockscout for tx list: `GET /api?module=account&action=txlist&address={wallet}`
3. Query ERC-20/ERC-721 transfer events: `POST RPC /eth_getLogs`
4. Decode transaction inputs (function selector → ABI decode)
5. Map fund flows (who funded wallet, where did funds go)
6. Cross-reference with known scam patterns

## Contract Analysis Workflow

1. Identify contract address
2. Get contract creation tx
3. Decode creation bytecode
4. Query all Transfer events (ERC-20/ERC-721/ERC-1155 topic signatures)
5. Build token flow graph
6. Identify unusual patterns (burns, fresh wallets, concentration)

## Red Flags for Pump-and-Dump Detection

- Fresh wallets receiving large allocations on launch day
- High % of supply sent to burn address
- Single or few wallets controlling large % of supply
- Influencer social media coordination
- Collection on shared/OpenSea storefront contract
- Very low floor price with wash trading
- Short active period with concentrated transactions

## Topic Signatures (for event log filtering)

- ERC-20 Transfer: `0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef`
- ERC-721 Transfer: `0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef`
- ERC-1155 TransferSingle: `0xc3d58168c5ae7397731d063d5bbf3ad97e89b1c00e1c5e7c9d3e7d8d8f3c3e7d8`
- ERC-1155 TransferBatch: `0x4a4f1e94c26d1d3f3a1e1b0e1c0d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d0e`
