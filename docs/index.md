# Unified GS1 Resolver Mesh
## Public Infrastructure Specification (Draft v0.2)

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

**Stage 1 — Offline physics engine (`csft_kernel.py`)**  
Running on a workstation or cloud server, this stage utilizes the recursive-algebraic framework originally developed for Closed String Field Theory (Kim, 2026). It solves continuous string field theory integrals (Mirzakhani kernels, pants decomposition of the D₁₃ microtubule space) to produce a finite matrix M representing the geometric rules for semantic binding and unbinding. This stage runs once per system configuration — never at runtime.

**Stage 2 — Blueprint injection (`.hdcc` file)**  
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
