[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.18332235.svg)](https://doi.org/10.5281/zenodo.18332235)

# Unified GS1 Resolver Mesh

## Public Infrastructure Specification — v3.0

| | |
|---|---|
| **Status** | Public draft for review |
| **Date** | 8 November 2026 |
| **Supersedes** | Draft v2.2 |
| **Steward** | Reap Protocol Community, which includes April Labs |
| **Licence** | MIT (code and documents) |

**Changes in v3.0.** This revision removes every claim that cannot be tested against the deployed system. The specification now covers one thing — the trust anchor — and states plainly what that anchor does and does not establish. Material that is not deployed has been moved to a non-normative annex rather than deleted, so that the direction of travel is recorded without being claimed.

---

## 1. Purpose

The Unified GS1 Resolver Mesh resolves GS1 identifiers — GTIN, SSCC and GLN — to publicly available product and supply-chain data, without an account, a fee, a token, or an approval.

The mesh does not hold product data. It holds an anchor: a permanent public record that an identifier has been claimed, by which address, and when. Resolution data is fetched from its source and verified against that anchor.

## 2. Scope

**This specification defines:**

- the behaviour of the trust anchor;
- the guarantees that follow from the anchor's design;
- what the anchor establishes and what it does not;
- licensing and neutrality commitments.

**This specification does not define:**

- application logic, or the content and quality of product data;
- the governance of organisations that publish or consume data;
- any computational, semantic or modelling layer, deployed or proposed;
- commercial deployment, pricing or service terms.

## 3. Conventions

The key words MUST, MUST NOT, SHOULD, SHOULD NOT and MAY are to be interpreted as described in RFC 2119 and RFC 8174.

A requirement in this document is normative only in Sections 4 to 7. Annex A is informative and carries no requirements.

## 4. The trust anchor

### 4.1 Deployment

The anchor is a single small contract, `HolocronRouter`, deployed at

```
0xeFaAB5Ec699d8c3Bd63d783025268c545357d45F
```

on ten EVM networks. The address is identical on every network. The contract has no administrative role, no proxy, no upgrade path, no pause function and no external calls. It cannot be changed by its authors or by anyone else.

### 4.2 What the anchor records

For each identifier coordinate, the anchor records three values:

- that the coordinate has been claimed;
- the address that claimed it;
- the time of the claim.

The first claim for a coordinate is final. Later writes to the same coordinate are ignored. Writing requires no permission, no payment and no allowlist.

### 4.3 What the anchor does not establish

This is the most important section of this document.

**The anchor MUST NOT be read as evidence of authority.** It records that an address claimed an identifier. It does not establish that the claimant has any right to that identifier, any relationship to the goods it denotes, or any standing to speak for the organisation named in it.

The anchor does not store product data, does not adjudicate between competing claimants, does not link an identifier to a legal entity, and does not attest to the accuracy of anything outside itself.

A relying party that needs to know whether a claimant may act for an identifier MUST obtain that assurance elsewhere. The anchor can tell it who claimed the identifier and when. It cannot tell it whether the claim was justified.

## 5. Guarantees

The mesh makes the following guarantees. Each is a property of the deployed anchor.

| | Guarantee | Basis |
|---|---|---|
| **G1** | **Deterministic record.** For a given identifier coordinate, every node on every network returns the same record, permanently. | The record is a function of chain state at the time of the first write. |
| **G2** | **Permissionless access.** Reading the anchor requires no account, credential, token, fee or approval. | The contract exposes no access control. |
| **G3** | **Non-discriminatory write.** No address is excluded from claiming an identifier. | The write path has no allowlist and no gate. |
| **G4** | **Availability bounded by network liveness.** The anchor remains readable for as long as any one of the supporting networks continues to produce blocks. | The record is replicated across ten independent networks. |
| **G5** | **No custody.** The mesh never takes custody of product data, of the identifier, or of any right in either. | The anchor stores three values and nothing else. |

The mesh makes no guarantee of data accuracy, completeness, currency or fitness for any purpose. Those are properties of the data source, not of the anchor.

## 6. Data and licensing

Product data remains with the party that publishes it and remains subject to that party's licence. The anchor stores no product data, so resolution transfers no data and no right in data.

Code, specification and documentation are published under the MIT licence. The contract source carries an SPDX identifier recording the same.

## 7. Neutrality and stewardship

Resolution MUST NOT be conditional on holding any token, membership, contract or credential. This is a property of the deployed contract, not a policy that could later be relaxed.

Stewardship of this specification is separate from any ecosystem that builds on it. Stewardship confers no control over the anchor, because the anchor has no control surface. A change to this document cannot change the deployed contract; at most it can change what future implementations are asked to do.

## 8. Implementation status

| Component | Status |
|---|---|
| Trust anchor (`HolocronRouter`) | Deployed and immutable on ten EVM networks |
| Resolution client | Reference implementation published |
| Public data sources | Integrated, each under its own licence |
| Computational extension | Not deployed. Design only, recorded in Annex A |

Nothing in Sections 1 to 7 depends on the fourth row.

## 9. Versioning

The version of this specification is independent of the anchor. The anchor does not version and will not be replaced.

A later version MAY add guarantees. It MUST NOT weaken Section 4.3 or Section 5. Any version that does so describes a different system and must not be presented as a revision of this one.

---

## Annex A — Forward direction (informative)

Earlier drafts described a computational layer intended to extend the anchor from a record of claims into a substrate for accumulating state across a supply chain. That direction is recorded here for continuity and nothing in it is claimed, implemented, required or relied upon.

It is excluded from the normative part of this specification for a single reason: none of it is deployed, and the properties it would assert cannot presently be tested against a running system. A guarantee that cannot be checked is not a guarantee, and stating it alongside the ones that can be checked would weaken all of them.

---

## Annex B — Relationship to earlier drafts

| Draft | Position |
|---|---|
| v0.1 | Base layer. Retained; normative content carried into Sections 4 and 5. |
| v0.2 | Added a semantic computation layer and physics-derived framing. Layer not deployed; framing withdrawn. |
| v2.2 | Reformulated the same layer in operator algebra. Layer still not deployed; content moved to Annex A. Physics metaphors removed. |

This specification retains the base layer without modification and closes the semantic layer as an open question rather than a claim.


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
