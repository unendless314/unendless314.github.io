# Repository Guidelines

This site uses Jekyll with the Chirpy theme. Keep changes small, readable, and reproducible locally before opening PRs.

## Project Structure & Module Organization
- `_posts/`: Published posts in `YYYY-MM-DD-title.md` (lowercase, hyphenated). Example: `_posts/2024-07-01-new-feature.md`.
- `_drafts/`: Unpublished drafts. Serve locally with `bundle exec jekyll s --drafts`.
- `_tabs/`: Navigation pages.  
- `assets/`, `pictures/`: Static assets and images (prefer `pictures/` for uploads).  
- `_plugins/posts-lastmod-hook.rb`: Sets `last_modified_at` from git history.  
- `_config.yml`: Site settings (title, URLs, analytics, PWA).  
- `_site/`: Build output (generated; do not edit).

## Build, Test, and Development Commands
- `bundle install` or `bundle`: Install Ruby gems.  
- `bundle exec jekyll s --livereload`: Run locally at `http://127.0.0.1:4000`.  
- `bundle exec jekyll b`: Production build into `_site/`.  
- `bash tools/test.sh`: CI-equivalent build check (`jekyll doctor` + `html-proofer`).

## Coding Style & Naming Conventions
- Indentation: 2 spaces; LF endings; final newline (see `.editorconfig`).  
- YAML: Prefer double quotes; Markdown `.md` may contain trailing spaces when intentional.  
- Posts: Front matter must include `title`, `description`, `author`, `date`, `categories`, `tags`, and optional `image.path`/`image.alt`/`pin`.  
- Images: Place under `pictures/...`; include descriptive alt text; use relative paths (e.g., `/pictures/contests/1-target.webp`).

## Testing Guidelines
- Run `bash tools/test.sh` before committing; fix broken anchors, missing images, or HTML issues flagged by `html-proofer`.  
- Drafts: verify rendering with `--drafts` when working on `_drafts/`.  
- The `posts-lastmod` hook reads git history—commit your changes locally to update `last_modified_at`.

## Commit & Pull Request Guidelines
- Commits: Imperative, concise subject, scope when helpful (e.g., `post: add contest #12` or `config: enable PWA cache`).  
- PRs: Include a summary, affected pages/paths, screenshots for visual changes, and link related issues. Confirm local `tools/test.sh` passes.  
- Content edits: keep unrelated files out of the diff; large media belongs in `pictures/`.

## Security & Configuration Tips
- Do not commit private tokens or IDs in `_config.yml` (analytics/comment providers). Leave blank or store externally.  
- Review `.github/workflows/pages-deploy.yml` for Pages deployment; pushes to `main/master` build and deploy.  
- Do not introduce scripts, generators, or auto-downloaders without prior maintainer approval; avoid `curl | sh` and network-dependent setup changes.  
- Only ship final, maintainer-provided assets; site icons must live at repo root as `apple-touch-icon.png`, `apple-touch-icon-precomposed.png`, and `favicon.ico`.  
- Prefer no new submodules; if absolutely needed, document rationale and CI implications.
