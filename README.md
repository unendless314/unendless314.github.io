# ZenPandaCoin Site

This is the source for the ZenPandaCoin website, built with Jekyll and the Chirpy theme.

## Local Development

- Prerequisites: Ruby 3.3 (see `.ruby-version`), Bundler, Git.
- Install gems: `bundle install`
- Run locally: `bundle exec jekyll s --livereload`
- Production build: `bundle exec jekyll b`
- CI-equivalent check: `bash tools/test.sh` (runs `jekyll doctor` + `html-proofer`)

## Content Structure

- Posts: `_posts/` with filenames `YYYY-MM-DD-title.md` (lowercase, hyphenated).
- Drafts: `_drafts/` (serve with `--drafts`).
- Tabs/pages: `_tabs/`
- Images: `pictures/` (prefer WebP when possible).
- Site config: `_config.yml`

## Contributing

- Please read `AGENTS.md` for repository conventions and workflow.
- Open pull requests with a concise summary and screenshots for visual changes.
- Run `bash tools/test.sh` locally before opening PRs.

## License

This project remains under the upstream theme’s [MIT](https://github.com/cotes2020/chirpy-starter/blob/master/LICENSE) license.
