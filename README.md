# ParaDOCS — Cursor Team Marketplace

ParaDOCS is a Cursor plugin for Paragon technical Markdown authoring. It ships the **paragon-tech-docs** skill as the primary way to write Paragon technical documentation, plus reusable rules for structure, style, and quality.

Repository: [github.com/paragon-cursor/paradocs](https://github.com/paragon-cursor/paradocs)

## What you get

- **`paragon-tech-docs` skill** — primary guidance for planning, drafting, and editing Paragon technical Markdown (Overview-first structure, UK English, published tone, security-aware examples).
- **ParaDOCS rules** — always-on reinforcement for Markdown style, terminology, stale-content trims, and documentation quality.
- **Team Marketplace packaging** with the ParaDOCS logo and metadata.

Convert MCP is not part of this release; it may return in a later version. Convert engine source remains in the repository for maintainers but is not wired into the Team Marketplace install.

## Prerequisites

1. You are signed into Cursor on the Paragon team with **Team Marketplace** access to **ParaDOCS**.

## Install from the Paragon Team Marketplace

1. Open Cursor team settings and go to **Team Marketplace**.
2. Find **ParaDOCS** in the Paragon marketplace and enable it for yourself or **Everyone** in the team.
3. Choose **Reload Window** so rules and the skill load.
4. Ask the agent to draft or edit technical documentation — the **paragon-tech-docs** skill applies automatically when the work matches its description.

## Example agent prompts

- “Draft a runbook for webhook authentication using our technical documentation style.”
- “Review this Markdown page for Overview-first structure and stale content.”
- “Split this large topic into focused guides and propose filenames before drafting.”

## Repository layout

- `.cursor-plugin/` — plugin and marketplace manifests.
- `rules/` — Cursor rules for documentation authoring.
- `skills/paragon-tech-docs/` — the primary technical documentation skill.
- `docs/` — plugin references and style guides.
- `engine/`, `src/convert/`, `dist/` — convert MCP source and prebuilds (not shipped by the Team Marketplace plugin in 0.3.0).

## Build (maintainers)

```bash
npm install
npm run build
```

Produces `dist/index.js` (convert MCP) and `dist/ui/mcp-app.html` (Apps chrome) when building convert locally. Optional Paragon Knowledge server: `npm run build:server:knowledge` → `dist/knowledge/index.js` (requires corpus env vars; not shipped by default).

## Scope

The default Team Marketplace install is **skills + rules** only. Convert MCP and optional Paragon Knowledge read/search code remain in the repository for separate pilots — see [docs/ParaDOCS-Plugin-Overview.md](docs/ParaDOCS-Plugin-Overview.md) and [docs/Paragon-Knowledge-MCP-Overview.md](docs/Paragon-Knowledge-MCP-Overview.md).
