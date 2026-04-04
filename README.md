[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.18332235.svg)](https://doi.org/10.5281/zenodo.18332235)

# Unified GS1 Resolver Mesh

**Public Digital Infrastructure for GS1 Identifier Resolution & Semantic Computation**

The Unified GS1 Resolver Mesh provides **open, neutral, and permissionless resolution of GS1 identifiers** (e.g., GTINs) to publicly available product information, including Open Food Facts datasets. 

With the introduction of the **v0.2 Specification**, the mesh is evolving from a stateless lookup infrastructure into a **distributed semantic computation substrate**. Physical objects no longer just have database entries; they carry *living hypervectors* that accumulate verifiable meaning, history, and physics as they move through the global supply chain.

This repository contains the **reference implementation**, architectural blueprints, and supporting documentation for the resolver mesh.

---

## Core Principles

* **Open & Permissionless:** Anyone can run a node or resolve identifiers without payment or token ownership.
* **Neutral & Non-discriminatory:** No restrictions based on organization, jurisdiction, or commercial status.
* **Public Infrastructure:** Resolving GS1 identifiers is a public good; this infrastructure does not impose fees or gate access.
* **Provenance without Overhead:** The v0.2 Semantic Computation Layer mathematically bakes supply chain history into hypervectors, eliminating the need for expensive per-transaction blockchain gas fees.
* **Reference Implementation:** HolocronRouter provides the canonical, multi-chain, production-grade routing trust anchor.

---

## Architecture: The Geometric Stack (v0.2)

The v0.2 resolver mesh operates as a structurally coherent hypergraph, completely eliminating the impedance mismatch between data, network wiring, and physical execution. It is governed by three orthogonal mathematical laws:

1. **Law 1: Finite Group Algebra ($GF(2^{14})$) — *Encode***  
   Basis vectors are perfectly orthogonal, defined by primitive roots over Galois fields for exact, hardware-native bitwise operations.
2. **Law 2: Finite Orbifold Projection ($\mathbb{Z}_q$) — *Constrain***  
   Vectors are stabilized at every hop using topological anchor points to prevent semantic drift and noise accumulation.
3. **Law 3: Tachyon Dynamics — *Evolve***  
   Leveraging frameworks derived from Closed String Field Theory (CSFT), the mesh resolves conflicts and decomposes aggregated containers (e.g., pallets) using pre-calculated binding matrices ($M$).

These laws are reduced offline into finite matrix equations and compiled into bare-metal C executables via the **HDCC Compiler**, running at $O(1)$ constant time directly on ROS 2 edge scanners and motor controllers.

---

## Relationship to Reap Protocol & APRIL

* The **Reap Protocol SDK** provides tools, HDCC compiler targets, and ecosystem extensions for developers interacting with the resolver mesh.
* Governance of the Reap Protocol is managed on-chain by the **April Token (APRIL) community**.
* **APRIL governance does not control the resolver mesh**; it governs optional ecosystem extensions, incentives, and services only.
* This separation ensures long-term neutrality and accessibility of public GS1 resolution.

---

## Spec & Documentation

The resolver mesh architecture is formally defined in our specification documents:

* **[Draft v0.1 Specification](SPEC.md):** Defines the live Base Layer, neutral governance, and HolocronRouter trust anchors.
* **[Draft v0.2 Specification](SPEC_v0.2.md):** Introduces the Semantic Computation Layer, Hypervector physics, the HDCC Compiler pipeline, and the Ramanujan/Cayley graph topology (Forward Design Target).

---

## Data Sources

* Data remains subject to the original data provider license.
* Contributions from Open Food Facts and others are integrated according to their respective open rules.
* Semantic hypervector state accumulated during resolution is a derived computational artifact of the mesh protocol and is not subject to any single data provider's ownership claims.

---

## Contributing

Contributions are welcome via standard GitHub workflow:

* Fork the repository
* Submit pull requests
* Follow the [Contribution Guidelines](CONTRIBUTING.md)

All contributions adhere to open principles and **do not change the public-good guarantees**.

---

## HolocronRouter (The Trust Anchor)

While the semantic mesh handles high-speed, P2P geometric computation, the HolocronRouter acts as the absolute Root of Trust. The HolocronRouter included in this repo is **permanent and immutable**.  

- Fully open-source and permissionless  
- No further updates will be made  
- Reference implementation for resolution operations across all supported networks (Ethereum, Base, Polygon, Arbitrum, etc.)

---

## Design Intent Documentation

We have published documentation describing the architectural design principles and technical implementation of our systems. See[DESIGN_INTENT_ANALYSIS.md](DESIGN_INTENT_ANALYSIS.md).

**Note:** This document describes technical design choices and engineering rationale. It does not constitute legal advice or regulatory analysis.

## License

* **Code, SDKs & HDCC Blueprints:** MIT License
* **HolocronRouter:** Fully open-source, permissionless
* **Specification & Docs:** MIT License

---

## Quick Links

*[SPEC_v0.2.md](SPEC_v0.2.md) – Full version 0.2 specification (Semantic Computation Layer)
* [SPEC.md](SPEC.md) – Version 0.1 specification (Base Layer)
* [Reap Protocol SDK](https://github.com/AprilOracle/reap-protocol-sdk)
* [DEFENSIVE_PUBLICATION.md](https://github.com/Apriloracle/unified-gs1-resolver-mesh/tree/main/defensive-publication) 
* [DESIGN_INTENT_ANALYSIS.md](DESIGN_INTENT_ANALYSIS.md)
