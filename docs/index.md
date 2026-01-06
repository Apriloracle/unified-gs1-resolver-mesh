# Unified GS1 Resolver Mesh
## Public Infrastructure Specification (Draft v0.1)

---

**Stewardship:** Reap Protocol contributors  
**Status:** Draft specification — open for public review

---

## 1. Purpose

The Unified GS1 Resolver Mesh provides an **open, neutral, and non-discriminatory mechanism** for resolving GS1 identifiers (e.g., GTINs) to publicly available product information, including datasets such as Open Food Facts.  

The resolver mesh is designed as public digital infrastructure intended to support global interoperability, transparency, and resilience in food information systems.

---

## 2. Scope

This specification defines:

- The functional guarantees of GS1 identifier resolution  
- The neutrality and access principles of the resolver mesh  
- The relationship between the resolver mesh, HolocronRouter, and the Reap Protocol  

This specification **does not define**:

- Application-level logic  
- Data ownership or data licensing  
- Commercial services built on top of the resolver  
- Governance of the broader Reap Protocol ecosystem  

---

## 3. Core Resolution Guarantees

The Unified GS1 Resolver Mesh guarantees that:

- GS1 identifiers can be resolved **without token ownership or payment**  
- Resolution is **non-discriminatory and open to all participants**  
- Resolver participation is not restricted by jurisdiction, organization type, or commercial status  
- Resolution behavior is deterministic and protocol-defined  

---

## 4. Infrastructure Architecture

The resolver mesh is implemented using **HolocronRouter**, an open, multi-chain blockchain routing infrastructure.

- HolocronRouter is **open-source and permissionless**  
- Participation in the resolver mesh does not require the use of any token  
- HolocronRouter provides integrity, availability, and auditability guarantees for resolution operations  
- HolocronRouter serves as the canonical **Trust Anchor and Root Registry** for the resolver mesh.  
- The data transport and resolution logic are handled by the **distributed mesh protocol**, anchored to the state defined in HolocronRouter  

---

## 5. Relationship to Reap Protocol

- The Unified GS1 Resolver Mesh is **supported by, but not governed by, the Reap Protocol**  
- The Reap Protocol provides tooling, SDKs, and ecosystem extensions  
- Governance of the Reap Protocol is managed on-chain by the **April Token community (APRIL)**  
- APRIL governance **does not control access to, or operation of, GS1 identifier resolution**  
- The resolver mesh remains operationally and access-neutral regardless of changes to the Reap Protocol ecosystem  

---

## 6. Data Sources and Licensing

- Data resolved through the mesh remains subject to the original data provider’s license  
- Open Food Facts data is governed by Open Food Facts’ licensing and contribution rules  
- The resolver mesh does not assert ownership over resolved data  

---

## 7. Governance and Stewardship

- Stewardship of this specification and the reference implementation is maintained by the **Reap Protocol contributors**  
- Changes to this specification are made transparently  
- Community input is encouraged  
- Stewardship ensures neutrality, openness, and long-term stability  

---

## 8. Non-Extractive Commitment

- No fees are required for resolution  
- No exclusive control is granted to any party  
- Commercial services may exist **around the resolver**, but not **within it**  

---

## 9. Versioning

This specification is versioned and may evolve to improve clarity, interoperability, and resilience, provided that the core guarantees defined herein are preserved.  

---

## 10. HolocronRouter Contract Address

To ensure consistent addressing and simplified integration across the multi-chain ecosystem, the HolocronRouter is deployed at a deterministic, universal address.

**Contract Address:** `0xeFaAB5Ec699d8c3Bd63d783025268c545357d45F`  

**Supported Networks:**

- Ethereum  
- Avalanche  
- Binance Smart Chain  
- Polygon  
- Base  
- Soneium  
- Arbitrum  
- Linea  
- Celo  
- Optimism (OP Mainnet)  

> **Note:** The HolocronRouter is permanent and frozen. No changes will be made after deployment. This ensures any participant can verify data integrity or resolve a Digital Link on their preferred network infrastructure without risk of proprietary modification.


---

**End of Draft Specification**
