# NFT Pump-and-Dump Research: Obsolete Beans Investigation

> Deep blockchain investigation into coordinated NFT pump-and-dump networks — wallet tracing, OSINT, and pattern analysis

## Quick Verdict

**🔴 CONFIRMED PUMP-AND-DUMP — AVOID**

Obsolete Beans is a coordinated NFT pump-and-dump operation run by a network of influencers (upside_davey, BasementRon) using the Unicorn Fart Dust ($UFD) community ecosystem. The on-chain evidence shows classic manipulation: fresh wallets, token burning, and social media shilling.

## Investigation Summary

| Finding | Status |
|---------|--------|
| Artificial floor manipulation | ✅ Confirmed |
| Fresh wallet accumulation | ✅ Confirmed |
| Supply burning | ✅ Confirmed |
| Coordinated social shilling | ✅ Confirmed |
| Connection to $UFD network | ✅ Confirmed |

## Reports

- **[Executive Summary](./reports/EXECUTIVE_SUMMARY.md)** — 1-page verdict + key findings
- **[Obsolete Beans Analysis](./reports/OBSOLETE_BEANS.md)** — Full collection analysis
- **[Wallet Tracing](./reports/WALLET_TRACING.md)** — Blockchain wallet analysis
- **[Network Analysis](./reports/NETWORK_ANALYSIS.md)** — Connected projects + people
- **[OSINT Findings](./reports/OSINT_FINDINGS.md)** — Identity investigation

## Key Wallets Under Investigation

| Wallet | Tokens | Pattern |
|--------|--------|---------|
| `0x8f77d28c...de1ebf` | 59 | Fresh wallet, Jan 13 2024 mint |
| `0x0000...dead` | 55 | Burn address — supply manipulation |
| `0xcc03c4ca...336a` | 37 | Active whale, 12.6 ETH |
| `0x88f7cadd...7054` | 29 | Long-term holder, 4.28 ETH |

## Connected People

- **upside_davey** (`@upside_davey`) — Twitter/X influencer, shilled Obsolete Beans
- **BasementRon** (`@BasementRon`) — NFT trader, "Chief Bean" of $UFD community

## Connected Projects

- **Obsolete Beans (ERC-1155)** — Primary investigation target, Jan 2024 launch, PUMP-AND-DUMP CONFIRMED
- **Obsolete Beans (ERC-721SeaDrop)** — New mint discovered Apr 15 2026, APPEARS ORGANIC (separate operation)
- **Unicorn Fart Dust ($UFD)** — Meme coin ecosystem, $1.2M hack in community
- **SpaceRidersXYZ** — Another project flagged by upside_davey as "getting shut down"

---

## UPDATE: New Mint Discovered (Apr 24 2026)

**New contract:** `0x95c77fc288dfae78bd30c73833e6927d7edb517a`
- **Type:** ERC721SeaDropCloneable (OpenSea launchpad)
- **Launched:** April 15, 2026 (17 days ago)
- **Holders:** 962 wallets, flat distribution (top 10 = 4.8%)
- **Pattern:** Trading bot market-making, organic mint distribution
- **Assessment:** APPEARS SEPARATE from original pump-and-dump — NO on-chain link to old crew

See [contracts/new-mint-0x95c77fc/](./contracts/new-mint-0x95c77fc/) for full analysis.

## Methodology

This investigation uses:
1. On-chain blockchain analysis (Ethereum RPC, Blockscout, raw event decoding)
2. Social media OSINT (Twitter/X, Discord)
3. Cross-wallet network mapping
4. Project history analysis

See [skills/blockchain-analyzer](./skills/blockchain-analyzer/SKILL.md) for the investigative methodology.

## Data Sources

- **Blockchain**: Ethereum via public RPC nodes, Blockscout API
- **NFT Data**: OpenSea API, Reservoir, Dune Analytics
- **Social**: Twitter/X syndication API
- **Blockchain Explorers**: Etherscan, Blockscout

---

*Last updated: 2026-04-24*
