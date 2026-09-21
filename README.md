# ParaDOCS — Cursor Team Marketplace

ParaDOCS is a Cursor plugin for Paragon technical Markdown authoring across teams. It ships the **paragon-tech-docs** skill as the primary way to write Paragon technical documentation, plus thin rules that reinforce structure, voice, and quality.

Repository: [github.com/paragon-cursor/paradocs](https://github.com/paragon-cursor/paradocs)

## What you get

- **`paragon-tech-docs` skill** — primary guidance for planning, drafting, and editing Paragon technical Markdown: audience-aware **Overview**, published Paragon tone of voice, UK English, Overview-first structure, security-aware examples, and numbered procedures.
- **ParaDOCS rules** — thin always-on seatbelts for Markdown style and stale-content trims; scoped rules where a guide path needs them.
- **Team Marketplace packaging** with the ParaDOCS logo and metadata.

## Prerequisites

1. You are signed into Cursor on the Paragon team with **Team Marketplace** access to **ParaDOCS**.

## Install from the Paragon Team Marketplace

1. Open Cursor team settings and go to **Team Marketplace**.
2. Find **ParaDOCS** in the Paragon marketplace and enable it for yourself or **Everyone** in the team.
3. Choose **Reload Window** so rules and the skill load.
4. Ask the agent to draft or edit technical documentation — the **paragon-tech-docs** skill applies automatically when the work matches its description.

## Example agent prompts

- “Draft a runbook for webhook authentication using our technical documentation style.”
- “Review this Markdown page for audience clarity, Overview-first structure, and stale content.”
- “Split this large topic into focused guides and propose filenames before drafting.”

## Repository layout

- `.cursor-plugin/` — plugin and marketplace manifests.
- `rules/` — Cursor rules for documentation authoring.
- `skills/paragon-tech-docs/` — the primary technical documentation skill.
- `docs/` — plugin references and style guides.
- `engine/`, `src/convert/`, `dist/` — convert MCP source and prebuilds (maintainer-only; not part of the Team Marketplace install).

## Build (maintainers)

```bash
npm install
npm run build
```

Produces `dist/index.js` (convert MCP) and `dist/ui/mcp-app.html` (Apps chrome) when building convert locally. Optional Paragon Knowledge server: `npm run build:server:knowledge` → `dist/knowledge/index.js` (requires corpus env vars; not shipped by default).

## Scope

The default Team Marketplace install is **skills + rules** only. Convert and optional Paragon Knowledge code remain in the repository for separate pilots — see [docs/ParaDOCS-Plugin-Overview.md](docs/ParaDOCS-Plugin-Overview.md) and [docs/Paragon-Knowledge-MCP-Overview.md](docs/Paragon-Knowledge-MCP-Overview.md).
