# ParaDOCS plugin overview

ParaDOCS is a Cursor plugin for Paragon technical Markdown authoring. It is distributed through the Paragon Team Marketplace and ships the **paragon-tech-docs** skill as the primary way to write Paragon technical documentation, plus bundled rules for structure, style, and quality.

Convert MCP is not part of this release; it may return in a later version.

## Prerequisites

1. You are signed into Cursor on the Paragon team with **Team Marketplace** access to **ParaDOCS**.

## Included

- **`skills/paragon-tech-docs/`** — primary skill for guided technical documentation authoring (Overview-first pages, numbered procedures, UK English, published tone, security-aware examples).
- **`rules/`** — structure, style, terminology, stale-content trims, and documentation quality.
- **`.cursor-plugin/`** manifests and **`assets/logo.png`**.

## Install from the Team Marketplace

1. Open Cursor team settings and go to **Team Marketplace**.
2. Add or select the Paragon marketplace sourced from `https://github.com/paragon-cursor/paradocs`.
3. Find **ParaDOCS** and enable it for yourself or **Everyone** in the Paragon team.
4. Choose **Reload Window** so rules and the skill load.
5. Ask the agent to draft or edit technical documentation — the **paragon-tech-docs** skill applies when the task matches its description.

## Authoring workflow

Use **paragon-tech-docs** as the primary authority for how Paragon technical Markdown is written. Use the bundled rules for always-on reinforcement when creating or reviewing documentation: headings, terminology, trimming superseded content, and quality checks.

## Convert MCP (not in 0.3.0)

The repository retains convert MCP source under `engine/`, `src/convert/`, and prebuilt `dist/` for maintainers and future releases. It is **not** registered by the Team Marketplace plugin in version 0.3.0.

## Paragon Knowledge (optional)

The repository retains an optional **Paragon Knowledge** read/search MCP (`src/knowledge/`, build with `npm run build:server:knowledge`). It is **not** registered by the Team Marketplace plugin and requires corpus path configuration. See [Paragon-Knowledge-MCP-Overview.md](Paragon-Knowledge-MCP-Overview.md).

## Maintenance

Keep `.cursor-plugin/plugin.json`, `.cursor-plugin/marketplace.json`, and this overview aligned. When convert MCP returns, run `npm run build` and commit updated `dist/` for marketplace consumers.

## Changelog

### 0.3.0

- Team Marketplace install is **skills + rules** only; convert MCP unwired from plugin manifest.
- **paragon-tech-docs** positioned as the primary way to write Paragon technical Markdown.
- Removed Python, venv, PyPI, and MCP Connected prerequisites from install surfaces.

### 0.2.1

- Document install prerequisites and remediation in plugin manifests, marketplace metadata, and this overview.

### 0.2.0

- Ship bundled **paradocs-convert** MCP with Word/PDF → Markdown engine, ripping profiles, and MCP Apps chrome.
- Register MCP in plugin manifest; optional `PARADOCS_DEFAULT_OUTPUT_DIR` only.
- Paragon Knowledge search remains in-repo as an optional build, not part of the default marketplace install.
