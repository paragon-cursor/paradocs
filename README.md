# ParaDOCS · Cursor Team Marketplace

ParaDOCS is a Cursor plugin for Paragon technical Markdown authoring across teams. It ships the **paragon-tech-docs** skill as the primary way to write Paragon technical documentation, plus thin rules that reinforce structure, voice, and quality.

Canonical source: [GitLab `cursor-test` / `paradocs/`](https://gitlab.com/gareth.howells778/cursor-test/-/tree/main/paradocs). Team Marketplace distribution: [github.com/paragon-cursor/paradocs](https://github.com/paragon-cursor/paradocs).

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
- `assets/` — plugin logo (`avatar.png`).
- `scripts/` — maintainer helpers (for example syncing the bundled style guide from `cursor-test`).

## Maintainers

Edit this plugin in GitLab `cursor-test` under `paradocs/`. GitLab CI publishes to GitHub for the Team Marketplace (see `MIRROR.md` in the GitLab tree).

To refresh the bundled copy of `docs/Paragon_Markdown_Style_Rules.md` from the repo-root style guide in `cursor-test`:

```bash
python scripts/sync_paragon_markdown_style.py
```

Use `--check` to fail on drift without writing. See [docs/ParaDOCS-Plugin-Overview.md](docs/ParaDOCS-Plugin-Overview.md) for plugin packaging notes.

## Scope

The Team Marketplace install is **skills + rules** only. See [docs/ParaDOCS-Plugin-Overview.md](docs/ParaDOCS-Plugin-Overview.md).
