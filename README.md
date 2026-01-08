# Unified GS1 Resolver Mesh

**Public Digital Infrastructure for GS1 Identifier Resolution**

The Unified GS1 Resolver Mesh provides **open, neutral, and permissionless resolution of GS1 identifiers** (e.g., GTINs) to publicly available product information, including Open Food Facts datasets.

This repository contains the **reference implementation** and supporting documentation for the resolver mesh.

---

## Core Principles

* **Open & Permissionless:** Anyone can run a node or resolve identifiers without payment or token ownership.
* **Neutral & Non-discriminatory:** No restrictions based on organization, jurisdiction, or commercial status.
* **Public Infrastructure:** Resolving GS1 identifiers is a public good; this infrastructure does not impose fees or gate access.
* **Reference Implementation:** HolocronRouter provides the canonical, multi-chain, production-grade routing infrastructure.

---

## Relationship to Reap Protocol & APRIL

* The **Reap Protocol SDK** provides tools and ecosystem extensions for developers interacting with the resolver mesh.
* Governance of the Reap Protocol is managed on-chain by the **April Token (APRIL) community**.
* **APRIL governance does not control the resolver mesh**; it governs optional ecosystem extensions, incentives, and services only.
* This separation ensures long-term neutrality and accessibility of public GS1 resolution.

---

## Spec & Documentation

The resolver mesh is formally defined in the **[Unified GS1 Resolver Mesh Specification](SPEC.md)**.  
This specification outlines guarantees, architecture, and access principles for external users and contributors.

---

## Data Sources

* Data remains subject to the original data provider license.
* Contributions from Open Food Facts and others are integrated according to their respective open rules.

---

## Contributing

Contributions are welcome via standard GitHub workflow:

* Fork the repository
* Submit pull requests
* Follow the [Contribution Guidelines](CONTRIBUTING.md)

All contributions adhere to open principles and **do not change the public-good guarantees**.

---

## HolocronRouter

The HolocronRouter included in this repo is **permanent and immutable**.  
It serves as the canonical routing infrastructure for the Unified GS1 Resolver Mesh.  

- Fully open-source and permissionless  
- No further updates will be made  
- Reference implementation for resolution operations across all supported networks

---

## License

* **Code & SDKs:** MIT License
* **HolocronRouter:** Fully open-source, permissionless
* **Specification & Docs:** MIT License

---

## Quick Links

* [SPEC.md](SPEC.md) – Full specification
* [Reap Protocol SDK](https://github.com/AprilOracle/reap-protocol-sdk)
* [DEFENSIVE_PUBLICATION.md](https://github.com/Apriloracle/unified-gs1-resolver-mesh/blob/main/DEFENSIVE_PUBLICATION.md) 
