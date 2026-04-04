# Unified GS1 Resolver Mesh
**Public Infrastructure Specification (Draft v0.2)**

---

**Stewardship:** Reap Protocol contributors  
**Status:** Draft specification — open for public review  
**Supersedes:** Draft v0.1  
**Changelog:** v0.2 introduces the Semantic Computation Layer — a physics-grounded, algebraically unified hypervector mesh that transforms the resolver from a stateless lookup infrastructure into a distributed semantic computation substrate.

---

## 1. Purpose

The Unified GS1 Resolver Mesh provides an **open, neutral, and non-discriminatory mechanism** for resolving GS1 identifiers (e.g., GTINs) to publicly available product information, including datasets such as Open Food Facts.

v0.2 extends this purpose: the resolver mesh is not only a resolution infrastructure but a **living semantic memory of physical things** — every GS1-identified object carries a hypervector that accumulates meaning as it moves through supply chains, resolver hops, and physical handlers. Resolution becomes anticipatory rather than reactive.

The resolver mesh is designed as public digital infrastructure intended to support global interoperability, transparency, and resilience in food information systems.

---

## 2. Scope

This specification defines:

- The functional guarantees of GS1 identifier resolution
- The neutrality and access principles of the resolver mesh
- The relationship between the resolver mesh, HolocronRouter, and the Reap Protocol
- The Semantic Computation Layer architecture (v0.2 addition)
- The three governing laws of the unified hypervector mesh (v0.2 addition)
- The HDCC compiler pipeline that generates bare-metal node execution (v0.2 addition)

This specification **does not define**:

- Application-level logic
- Data ownership or data licensing
- Commercial services built on top of the resolver
- Governance of the broader Reap Protocol ecosystem
- Implementation timelines for v0.2 semantic layer components (these are forward-looking design targets)

---

## 3. Core Resolution Guarantees

The Unified GS1 Resolver Mesh guarantees that:

- GS1 identifiers can be resolved **without token ownership or payment**
- Resolution is **non-discriminatory and open to all participants**
- Resolver participation is not restricted by jurisdiction, organization type, or commercial status
- Resolution behavior is deterministic and protocol-defined
- Semantic vector state accumulated by a resolved identifier is **portable and verifiable** without central coordination (v0.2)

---

## 4. Infrastructure Architecture

### 4.1 Base Layer (v0.1 — unchanged)

The resolver mesh is implemented using **HolocronRouter**, an open, multi-chain blockchain routing infrastructure.

- HolocronRouter is **open-source and permissionless**
- Participation in the resolver mesh does not require the use of any token
- HolocronRouter provides integrity, availability, and auditability guarantees for resolution operations
- HolocronRouter serves as the canonical **Trust Anchor and Root Registry** for the resolver mesh
- The data transport and resolution logic are handled by the **distributed mesh protocol**, anchored to the state defined in HolocronRouter

### 4.2 Semantic Computation Layer (v0.2 — forward design target)

Each resolver node in v0.2 operates as a **semantic computation node**, not merely a routing hop. The architecture introduces a four-stage compiler pipeline and three governing algebraic laws acting on a single unified mesh.

#### 4.2.1 The Four-Stage Compiler Pipeline

Resolution in v0.2 is backed by a compiled inference pipeline generated offline and executed at bare-metal speed on each node:

**Stage 1 — Offline physics engine (csft_kernel.py)**  
Running on a workstation or cloud server, this stage utilizes the recursive-algebraic framework originally developed for Closed String Field Theory (Kim, 2026). It solves continuous string field theory integrals (Mirzakhani kernels, pants decomposition of the D₁₃ microtubule space) to produce a finite matrix M representing the geometric rules for semantic binding and unbinding. This stage runs once per system configuration — never at runtime.

**Stage 2 — Blueprint injection (.hdcc file)**  
The matrix M and seed vector Sₙ are injected into a declarative `.hdcc` blueprint. This file describes what the computation means (binding rules, decomposition targets, clock ring) without specifying how to execute it.

**Stage 3 — HDCC compiler**  
The HDCC compiler reads the `.hdcc` blueprint and generates a tiny, optimised C function (`nexus_node.c`). The heavy physics are pre-solved; the compiled output is a few array multiplications using the pre-calculated matrix M. The compiler generates three distinct functions per node, one for each governing law (see Section 4.2.2).

**Stage 4 — Bare-metal ROS 2 / resolver node execution**  
The compiled C functions execute on each resolver node. A GTIN scan triggers the inference pipeline: encode → stabilise → evolve. Total execution is O(1) — the node performs no physics at runtime, only fast algebraic operations.

#### 4.2.2 Three Governing Laws — One Mesh

v0.2 operates a single hypervector mesh governed by three orthogonal laws. These are not separate meshes; they are three aspects of the same underlying hypergraph, each compiled to a distinct C function by the HDCC compiler.

**Law 1 — Finite Group Algebra (GF(2¹⁴))**  
*Role: encode and manipulate*

The basis vectors of the mesh are initialised using primitive roots of the Galois field GF(2¹⁴), the same algebraic object as the Z₁₆₃₈₄ clock ring (2¹⁴ = 16,384). This gives exact near-orthogonality by algebraic structure — guaranteed, not approximated. All binding and unbinding operations are cyclic permutations and XOR — native bitwise hardware operations.

- Compiled output: cyclic shift and XOR functions, O(1)
- Guarantees: exact orthogonality, formal verifiability, zero floating-point error
- Role in mesh: defines the allowed operations on every edge

**Law 2 — Finite Orbifold Projection (ℤ_q quotient)**  
*Role: structure and constrain*

At each resolver hop, the incoming hypervector is projected through a finite orbifold:

```
X̃ = Σ_{n=0}^{q-1} Pⁿ(X)
```

This group-averaged projection collapses the vector to its symmetry equivalence class, enforcing invariance and reducing representational drift across long resolver chains. Fixed points of this projection act as **anchor vectors** — canonical semantic reference frames for product classes, locations, and object types. In GS1 terms, anchor vectors stabilise GTIN category identity across the mesh regardless of individual object state.

- Compiled output: finite image-sum loop, unrolled at compile time to O(q) constant
- Guarantees: denoising, drift prevention, canonical anchor points
- Role in mesh: defines the shape of the hypergraph embedding

**Law 3 — Tachyon / Commutator Dynamics**  
*Role: evolve and resolve*

The global field Φ evolves according to:

```
Φ_{t+1} = Φ_t + S − M(Φ_t)
```

where M is the Mirzakhani binding matrix (pre-computed in Stage 1) and S is the seed vector. Commutator interactions between nodes generate directed, causal relationships:

```
[X_a, X_b] = X_a ⊗ X_b − X_b ⊗ X_a
```

This is the only layer that answers which state is correct and how the mesh resolves conflicts between competing vector updates (e.g., conflicting handler scans on a GS1 pallet). The system converges to a stable fixed point `(I − M)Φ = S`.

- Compiled output: matrix multiply and fixed-point iteration, O(N) per node with locality
- Guarantees: causal consistency, conflict resolution, global convergence
- Role in mesh: defines the state update rule of the hypergraph

#### 4.2.3 Mesh Topology — Ramanujan / Cayley Graph

The physical wiring of resolver nodes follows a **Cayley graph constructed over GF(2¹⁴)** using the same primitive root generator as the basis vectors. This makes the mesh a **Ramanujan graph** — its spectral gap meets the Alon-Boppana theoretical maximum, guaranteeing:

- Vector diffusion across the entire mesh in O(log N) hops — provably optimal
- No bottlenecks: every node is algebraically close to every other node
- Fault tolerance with formal bounds: the spectral gap remains intact after removal of a constant fraction of nodes

Because the topology is derived from the same GF(2¹⁴) group as the basis vectors and orbifold projection, there is **zero algebraic impedance mismatch** between the space, the operations, and the wiring. The mesh does not transport data — it computes.

#### 4.2.4 GS1 Semantic Identity

In v0.2, every GS1 identifier (GTIN, SSCC, GLN) becomes the seed of a hypervector in GF(2¹⁴). That vector accumulates Δ at each resolver hop — warehouse scans, border crossings, quality checks, temperature events, retail receipts. The three governing laws ensure:

- **Law 1** encodes each event as a well-formed hypervector update
- **Law 2** stabilises the vector at each hop, preventing drift and maintaining category anchors
- **Law 3** resolves any conflicting updates and converges the global field to a consistent state

The result: every physical object in the GS1 namespace carries a **living hypervector** — a mathematically grounded record of its semantic history that any resolver node can verify without central coordination.

Key emergent capabilities:

- **Provenance without blockchain overhead** — the accumulated vector is the audit trail, encoded in hypervector geometry. Verifiable at any node via the (I − M) fixed-point check.
- **Semantic anomaly detection** — vector divergence from expected trajectory flags supply chain anomalies (wrong handler, temperature exceedance, route deviation) at any resolver node, without a central monitor.
- **Predictive resolution** — a resolver mid-chain can infer likely destination and condition from the current vector state, enabling anticipatory rather than reactive resolution.
- **Cross-object reasoning** — vectors from multiple GTINs on the same pallet can be bundled and decomposed via M, enabling the mesh to reason about assemblies and relationships, not only individual identities.

---

## 5. Relationship to Reap Protocol

- The Unified GS1 Resolver Mesh is **supported by, but not governed by, the Reap Protocol**
- The Reap Protocol provides tooling, SDKs, and ecosystem extensions
- Governance of the Reap Protocol is managed on-chain by the **April Token community (APRIL)**
- APRIL governance **does not control access to, or operation of, GS1 identifier resolution**
- The resolver mesh remains operationally and access-neutral regardless of changes to the Reap Protocol ecosystem
- The Semantic Computation Layer (v0.2) is open infrastructure — its compiled node functions, HDCC blueprints, and algebraic parameters are publicly specified and independently verifiable

---

## 6. Data Sources and Licensing

- Data resolved through the mesh remains subject to the original data provider's license
- Open Food Facts data is governed by Open Food Facts' licensing and contribution rules
- The resolver mesh does not assert ownership over resolved data
- Semantic hypervector state accumulated during resolution is a derived computational artifact of the mesh protocol and is not subject to any single data provider's ownership claims

---

## 7. Governance and Stewardship

- Stewardship of this specification and the reference implementation is maintained by the **Reap Protocol contributors**
- Changes to this specification are made transparently
- Community input is encouraged
- Stewardship ensures neutrality, openness, and long-term stability
- The algebraic parameters of the Semantic Computation Layer (GF(2¹⁴) primitive root, orbifold parameter q, Mirzakhani matrix M) are published as open constants alongside each specification version

---

## 8. Non-Extractive Commitment

- No fees are required for resolution
- No exclusive control is granted to any party
- Commercial services may exist **around the resolver**, but not **within it**
- The Semantic Computation Layer is open infrastructure — compiled node functions and HDCC blueprints are published under open terms

---

## 9. Implementation Status

| Component | v0.1 Status | v0.2 Status |
|---|---|---|
| HolocronRouter base layer | Deployed | Unchanged |
| GS1 identifier resolution | Live | Extended with semantic state |
| GF(2¹⁴) basis initialisation | — | Design target |
| Orbifold projection (ℤ_q) | — | Design target |
| Mirzakhani matrix M (offline) | — | Design target |
| HDCC compiler pipeline | — | Design target |
| Ramanujan / Cayley mesh topology | — | Design target |
| Tachyon field convergence | — | Design target |
| GS1 semantic accumulation | — | Design target |

v0.2 components are **forward-looking design targets**. This specification defines the intended architecture for the implementation phase. No v0.2 semantic layer components are deployed as of this draft.

---

## 10. Versioning

This specification is versioned and may evolve to improve clarity, interoperability, and resilience, provided that the core guarantees defined herein are preserved.

---

## 11. HolocronRouter Contract Address

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

## Appendix A — Algebraic Reference

The following constants define the Semantic Computation Layer. These are published as open parameters alongside this specification.

| Parameter | Value | Role |
|---|---|---|
| Clock ring | Z₁₆₃₈₄ | Modular arithmetic base (2¹⁴) |
| Field | GF(2¹⁴) | Basis vector construction |
| Orbifold group | ℤ_q | Projection / denoising (q to be fixed at implementation) |
| Matrix M | Computed by csft_kernel.py | Binding / unbinding rules |
| Seed Sₙ | Computed by csft_kernel.py | Field initialisation |
| Convergence condition | (I − M)Φ = S | Global consistency criterion |
| Mesh topology | Cayley graph over GF(2¹⁴) | Ramanujan expansion guarantee |

---

## Appendix B — Governing Law Interaction Summary

```
algebra generates possibilities
    ↓
geometry filters possibilities      [orbifold projection at each hop]
    ↓
dynamics selects stable reality     [tachyon convergence to fixed point]
```

All three laws act on the same underlying hypergraph. There is one mesh, not three. Each resolver node executes all three compiled functions per resolution event: encode → stabilise → evolve.

--

## Appendix C — References & Upstream Dependencies

The Semantic Computation Layer relies on advanced algebraic structures adapted from theoretical physics. The Reap Protocol contributors formally acknowledge the following upstream research and open-source infrastructure utilized in Stage 1 of the compiler pipeline:

**Closed String Field Theory (CSFT) Integration**  
The derivation of the unbinding matrix $M$ and the reduction of infinite-dimensional continuous geometry into finite matrix operations relies on the open-source `csft_kernel.py` and `csft_vertex.py` infrastructure.
- **Author:** Manki Kim (Stanford / PSI)
- **Paper:** *Recursive-Algebraic Solution of the Closed String Tachyon Vacuum Equation* (arXiv:2603.29926)
- **Repository:** `https://github.com/mk2427/csft-tachyon-vacuum`
- **Usage:** The CSFT pants decomposition framework is adapted within the HDCC compiler pipeline to calculate the invariant semantic binding rules for the GS1 hypervector mesh.

---

**End of Draft Specification v0.2**
