# ParaDOCS plugin overview

ParaDOCS is a Cursor plugin for Paragon technical Markdown authoring across teams. It is distributed through the Paragon Team Marketplace and ships the **paragon-tech-docs** skill as the primary way to write Paragon technical documentation, plus thin bundled rules for structure, voice, and quality.

## Prerequisites

1. You are signed into Cursor on the Paragon team with **Team Marketplace** access to **ParaDOCS**.

## Included

- **`skills/paragon-tech-docs/`** .  primary skill for guided technical documentation authoring: decide the audience before drafting, name the reader and outcome in **Overview**, published Paragon tone of voice, numbered procedures, UK English, and security-aware examples.
- **`rules/`** .  thin seatbelts for Markdown style and stale-content trims; path-scoped rules where a guide needs them (for example polite user prohibitions in user/admin guides).
- **`.cursor-plugin/`** manifests and **`assets/logo.png`**.

## Install from the Team Marketplace

1. Open Cursor team settings and go to **Team Marketplace**.
2. Add or select the Paragon marketplace sourced from `https://github.com/paragon-cursor/paradocs`.
3. Find **ParaDOCS** and enable it for yourself or **Everyone** in the Paragon team.
4. Choose **Reload Window** so rules and the skill load.
5. Ask the agent to draft or edit technical documentation .  the **paragon-tech-docs** skill applies when the task matches its description.

## Authoring workflow

Use **paragon-tech-docs** as the primary authority for how Paragon technical Markdown is written: audience, voice, structure, procedures, links, and security. Use the bundled rules for always-on reinforcement (style pointer, stale-content trims) when creating or reviewing documentation.

## Maintainer-only code (not in marketplace install)

The repository retains convert MCP source under `engine/`, `src/convert/`, and prebuilt `dist/` for maintainers and future releases. It is **not** registered by the Team Marketplace plugin.

An optional **Paragon Knowledge** read/search MCP (`src/knowledge/`, build with `npm run build:server:knowledge`) also remains in-repo for separate pilots. It is **not** registered by the Team Marketplace plugin and requires corpus path configuration. See [Paragon-Knowledge-MCP-Overview.md](Paragon-Knowledge-MCP-Overview.md).

## Maintenance

Keep `.cursor-plugin/plugin.json`, `.cursor-plugin/marketplace.json`, and this overview aligned. Plugin/marketplace description fields are pending final product-owner copy for 0.4.0.

## Changelog

### 0.4.0

- **paragon-tech-docs** expanded: audience-first drafting (reader and outcome in **Overview**), promoted Paragon tone of voice section, department-neutral examples.
- **style-reference.md** cleaned and aligned with audience and voice guidance.
- **polite-user-prohibitions** scoped to `user-guide/` and `admin-guide/` paths only (not global).
- **trim-stale-docs** stale rule references removed.
- **paragon-markdown-style** thinned; skill remains primary authority.
- Version bump to 0.4.0; marketplace description pending final copy.

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
