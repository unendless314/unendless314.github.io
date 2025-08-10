# Suggestions Backlog

Small, low-risk improvements you can pick up over time. None are urgent.

## CI & Tooling
- Consider Dependabot for Bundler updates (monthly) to keep gems current without surprise upgrades.

## Assets & Images
- Provide PWA icons (recommended: 192x192 and 512x512 PNGs) for better install prompts; keep them under `assets/img/` and wire via theme options if needed.
- Audit `assets/lib/` usage. If not self-hosting Chirpy assets, document that it’s unused or remove it to reduce noise. If you do self-host later, re-enable `submodules: true` in the workflow.

## Security & Hygiene
- Devcontainer: avoid `curl | sh` and unpinned `git clone` in `.devcontainer/post-create.sh`; pin versions or comment these lines if not essential.
- Add a lightweight pre-commit sample (optional) to block `.DS_Store` and very large binaries (e.g., >5–10 MB) from entering history.

## Docs & UX
- Add PR/Issue templates and a `CODEOWNERS` file for clearer review ownership and submission checklists.