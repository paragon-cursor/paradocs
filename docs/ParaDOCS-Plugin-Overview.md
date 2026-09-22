# ParaDOCS plugin overview

ParaDOCS is a Cursor plugin for Paragon technical Markdown authoring across teams. It is distributed through the Paragon Team Marketplace and ships the **paragon-tech-docs** skill as the primary way to write Paragon technical documentation, plus thin bundled rules for structure, voice, and quality.

## Prerequisites

1. You are signed into Cursor on the Paragon team with **Team Marketplace** access to **ParaDOCS**.

## Included

- **`skills/paragon-tech-docs/`** — primary skill for guided technical documentation authoring: ask for the audience before drafting, name the reader and outcome in **Overview**, published Paragon tone of voice, numbered procedures, UK English, and security-aware examples.
- **`rules/`** — thin seatbelts for Markdown style and stale-content trims; path-scoped rules where a guide needs them (for example polite user prohibitions in user/admin guides).
- **`.cursor-plugin/`** manifests and **`assets/avatar.png`**.

## Install from the Team Marketplace

1. Open Cursor team settings and go to **Team Marketplace**.
2. Find **ParaDOCS** in the Paragon marketplace and enable it for yourself or **Everyone** in the Paragon team.
3. Choose **Reload Window** so rules and the skill load.
4. Ask the agent to draft or edit technical documentation — the **paragon-tech-docs** skill applies when the task matches its description.

Do not browse github.com to install ParaDOCS. The private GitHub distribution mirror (`paragon-cursor/paradocs`) is for maintainers and the Cursor GitHub App only.

## Authoring workflow

Use **paragon-tech-docs** as the primary authority for how Paragon technical Markdown is written: audience, voice, structure, procedures, links, and security. Use the bundled rules for always-on reinforcement (style pointer, stale-content trims) when creating or reviewing documentation.

## Maintenance

Keep `.cursor-plugin/plugin.json`, `.cursor-plugin/marketplace.json`, and this overview aligned when releasing a new plugin version.

To sync the bundled style guide from `cursor-test`:

```bash
python scripts/sync_paragon_markdown_style.py
```

For local testing without the Team Marketplace, run `scripts/install-local-plugin.ps1` (Windows) to copy the plugin payload into `~/.cursor/plugins/local/paradocs`.

## Changelog

### 0.4.5

- GitHub distribution mirror is **private**; Team Marketplace reads it via the Cursor GitHub App.
- Plugin and marketplace logos use relative `assets/avatar.png` (not `raw.githubusercontent.com`).
- Install docs point to Team Marketplace only; removed end-user GitHub URLs.

### 0.4.4

- **paragon-tech-docs** requires asking the user for audience and outcome before drafting **Overview**, **Prerequisites**, or body, unless the request already states both.

### 0.4.3

- Removed all MCP server, convert engine, and maintainer MCP config from the repository.
- Team Marketplace package is **skills + rules** only; no Node build or bundled servers in-repo.
- README and this overview rewritten for the authoring-only plugin.

### 0.4.0

- **paragon-tech-docs** expanded: audience-first drafting (reader and outcome in **Overview**), promoted Paragon tone of voice section, department-neutral examples.
- **style-reference.md** cleaned and aligned with audience and voice guidance.
- **polite-user-prohibitions** scoped to `user-guide/` and `admin-guide/` paths only (not global).
- **trim-stale-docs** stale rule references removed.
- **paragon-markdown-style** thinned; skill remains primary authority.
- Version bump to 0.4.0.

### 0.3.0

- Team Marketplace install is **skills + rules** only.
- **paragon-tech-docs** positioned as the primary way to write Paragon technical Markdown.
- Removed Python, venv, PyPI, and MCP Connected prerequisites from install surfaces.

### 0.2.1

- Document install prerequisites and remediation in plugin manifests, marketplace metadata, and this overview.
