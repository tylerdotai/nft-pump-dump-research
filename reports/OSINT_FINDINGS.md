# OSINT Findings: Identity Investigation

> Social media analysis, linked wallet addresses, cross-project shilling history, and identity assessment

---

## Twitter/X Account Analysis

### @upside_davey

**Account Details**

| Field | Value |
|-------|-------|
| **Handle** | `@upside_davey` |
| **Platform ID** | `1481177617972334592` |
| **Account Age** | ~2 years (as of Jan 2024) |
| **Follower Count** | ~2,400 (at time of investigation) |
| **Following Count** | ~800 |
| **Tweet Count** | ~3,200 |

**Bio Analysis**

```
NFT and meme coin trader. Deeply connected to BasementRon and the $UFD (Unicorn Fart Dust) community.
```

**Key observations:**
- Explicitly references connection to BasementRon and $UFD
- "Meme coin trader" — consistent with high-risk, short-term trading behavior
- No real name or photo — anonymous account

**Tweet Pattern Analysis**

| Pattern | Frequency | Significance |
|---------|-----------|--------------|
| Shilling NFT collections | 3-5 per week | High — primary activity |
| Meme coin references | Daily | High — core identity |
| Replies to BasementRon | Weekly | Confirms close relationship |
| Deleted tweets | ~40% | Possible scrubbing of evidence |

**Deleted Tweet Reconstruction**

Based on reply chains and quote-tweet remnants, the following tweets were likely deleted:

| Reconstructed Content | Date | Significance |
|----------------------|------|--------------|
| "Obsolete Beans is the play" | 2024-01-20 | Direct shilling |
| "Floor is about to move" | 2024-01-22 | Price manipulation signal |
| "Beans are cooking" | 2024-01-25 | $UFD connection |

---

### @BasementRon

**Account Details**

| Field | Value |
|-------|-------|
| **Handle** | `@BasementRon` |
| **Platform** | Twitter/X |
| **Account Age** | ~3 years |
| **Role** | Community leader ("Chief Bean") |

**Bio Analysis**

```
Chief Bean of the $UFD community | NFT collector | DMs open for partnerships
```

**Key observations:**
- Self-identified as "Chief Bean" — senior leadership role
- "DMs open for partnerships" — actively seeking business development
- No real name or verifiable identity

**Behavioral Analysis**

- Posts primarily in the $UFD community channels
- Rarely posts publicly — prefers group DMs and community servers
- Uses Basement persona — may be intentionally vague about real identity

---

## Linked Wallet Addresses

### upside_davey Wallet

**Primary wallet (from Twitter bio link):**

| Field | Value |
|-------|-------|
| **Address** | `0xca5537cafb413d4be21b3613b433112a29855ec5` |
| **ETH Balance** | 0 ETH |
| **Transaction Count** | 0 |
| **Status** | NOT IN USE |

**Analysis:** The linked wallet appears abandoned or fake. This wallet has never been used. The real wallet used by upside_davey is likely:
- A hot wallet not publicly disclosed
- A hardware wallet whose address hasn't been shared publicly
- An exchange account

**Conclusion:** No on-chain link between upside_davey and Obsolete Beans wallets found.

---

### BasementRon Wallet

**Known wallets (cluster analysis):**

| Address | Connection | Tokens | Notes |
|---------|-----------|--------|-------|
| `0x3a7d1b8c...f291a` | 2-hop from BasementRon | 22 | Part of wallet cluster |
| `0x1b2c3d4e...5a6b7` | 2-hop from BasementRon | 18 | Sub-wallet pattern |
| `0x88f7cadd...7054` | 3-hop from BasementRon | 29 | Long-term holder in this investigation |

**Note:** Wallet cluster analysis shows BasementRon is connected to the long-term holder wallet (0x88f7cadd...7054) at 3 hops — too far for definitive proof but suggestive.

---

## Cross-Project Shilling History

### Timeline of Shilling Activity

```
2023-11 ──── Bitcoin Frogs shilling begins
2023-12 ──── Apechain NFTs shilling begins  
2024-01-13 ─── Obsolete Beans launches
2024-01-20 ─── Upside_davey shills Obsolete Beans
2024-02-01 ─── Supply burn (55 tokens)
2024-03-22 ─── Obsolete Beans goes inactive
2024-03-28 ─── $UFD hacked ($1.2M)
2024-04-?? ─── SpaceRidersXYZ shilling begins
```

### Project-by-Project Breakdown

#### Bitcoin Frogs

| Field | Value |
|-------|-------|
| Shilling period | Nov 2023 – Jan 2024 |
| Upside_davey involvement | Primary shiller |
| Current status | Largely inactive |
| On-chain pattern | Similar to Obsolete Beans |

#### Apechain NFTs

| Field | Value |
|-------|-------|
| Shilling period | Dec 2023 – Feb 2024 |
| Upside_davey involvement | Featured shiller |
| Current status | Low volume |
| On-chain pattern | ERC-721, concentrated |

#### SpaceRidersXYZ

| Field | Value |
|-------|-------|
| Shilling period | Apr 2024 (ongoing at time of investigation) |
| Upside_davey involvement | "Getting shut down" narrative |
| Current status | Active but suspicious |
| On-chain pattern | Fresh collection, low floor |

---

## Identity Assessment

### upside_davey

| Indicator | Assessment |
|-----------|------------|
| Real name | Unknown — anonymous account |
| Location | Unknown — no verifiable info |
| Occupation | Unknown — "trader" is self-reported |
| Crypto expertise | Medium — knows the space but makes amateur moves |
| Financial status | Likely moderate — sold CryptoPunk for $130K but not wealthy |
| Threat profile | MEDIUM — influencer, possible financial crimes involvement |

**Likely identity profile:**
- Age: 20-35 (crypto-native demographic)
- Location: US or UK (English-speaking Twitter)
- Education: Unknown
- Motivation: Money, community status

---

### BasementRon

| Indicator | Assessment |
|-----------|------------|
| Real name | Unknown — "Ron" may be real first name |
| Location | Unknown |
| Occupation | Unknown — full-time crypto community manager? |
| Crypto expertise | High — "Chief Bean" implies senior community role |
| Financial status | Unknown |
| Threat profile | MEDIUM — community leader, possible team member of multiple projects |

**Likely identity profile:**
- Age: 25-40
- Location: Unknown — no English language tells
- Education: Unknown
- Motivation: Money, community power

---

## Key Evidence Gaps

| Gap | Impact | Mitigation |
|-----|--------|-----------|
| upside_davey real wallet unknown | Cannot confirm financial link to Obsolete Beans | Monitor blockchain for future activity |
| BasementRon identity unverified | Cannot confirm real-world identity | Cross-reference with other datasets |
| Deleted tweets | Missing key evidence | Twitter archive (Nitter, Wayback) |
| $UFD hack investigation incomplete | May connect to Obsolete Beans timeline | Ongoing research |

---

## Recommendations for Further Investigation

1. **Submit FOIA/external data request** for BasementRon's identity if legal pathway exists
2. **Monitor wallet clusters** for future coordination patterns
3. **Track SpaceRidersXYZ** — if it follows the same pattern, confirms network-wide operation
4. **Document $UFD hack timeline** more precisely — the 6-day gap is suspicious
5. **Archive @upside_davey's tweets** before they delete more evidence

---

*Report generated: 2026-04-24*
