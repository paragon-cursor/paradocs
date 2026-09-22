# Security policy

## Scope

This repository is the **private** Cursor Team Marketplace distribution mirror of the ParaDOCS plugin (rules, skills, and packaging metadata). Canonical development happens in GitLab `cursor-test` / `paradocs/`. Team Marketplace reads this mirror through the Cursor GitHub App; ordinary team members install from Team Marketplace only.

Security reports should relate to content or configuration published in this mirror.

## Supported versions

Only the current `main` branch of this repository is supported. Older tags or forks are out of scope unless they match what the Team Marketplace currently distributes.

## Reporting a vulnerability

Please report security issues **privately**. Do not open a public GitHub issue.

**Preferred:** [GitHub Security Advisories](https://github.com/paragon-cursor/paradocs/security/advisories/new) (private vulnerability reporting; requires collaborator access).

**Alternative:** email [gareth.howells@paragon-cc.co.uk](mailto:gareth.howells@paragon-cc.co.uk).

Include a clear description, affected paths or files, steps to reproduce, and impact if known. We aim to acknowledge reports within a few working days.

## Secrets in this repository

Do not commit API keys, tokens, credentials, or other secrets. If you find sensitive material here, report it privately using the channels above rather than disclosing it elsewhere.
