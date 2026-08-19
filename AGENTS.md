# AGENTS.md

## Project Overview

This repository is the source for `chy.tw`, a personal Jekyll site hosted on GitHub Pages.

- Production site: https://chy.tw/
- GitHub repository: https://github.com/b9932028-ui/chy.tw
- Theme base: https://github.com/piharpi/jekyll-klise
- License: MIT; keep the original Klise theme credit and license notices.

The site started from the Klise Jekyll theme and has been adapted for GitHub Pages using GitHub Actions because the theme uses `jekyll-postfiles`, which is not supported by GitHub Pages' built-in Jekyll builder.

## Hosting And Domain

GitHub Pages is configured with a custom domain:

- Custom domain: `chy.tw`
- `www.chy.tw` redirects to `chy.tw`
- HTTPS is enforced

Because this site is served at the domain root, keep:

- `_config.yml` `url: "https://chy.tw"`
- `_config.yml` `baseurl: ""`
- GitHub Actions Jekyll build command using `--baseurl ""`

Do not reintroduce `/chy.tw` into internal links or build output.

## Local Development

The project supports Docker-based local development for Windows.

Tracked local-dev files:

- `dev/compose.yaml`
- `dev/serve.ps1`

Run locally with:

```powershell
.\dev\serve.ps1
```

Then open:

```text
http://localhost:4000/
```

If using Ruby directly, use Ruby 3.2 and Bundler:

```bash
bundle install
bundle exec jekyll serve
```

## Important Files

- `_config.yml`: site title, URL, author data, defaults, plugins.
- `_data/menus.yml`: top navigation.
- `_layouts/home.html`: homepage recent posts list.
- `_layouts/post.html`: blog post layout.
- `_includes/comments.html`: Giscus integration.
- `_sass/` and `assets/css/style.scss`: theme styling.
- `_posts/`: published posts.
- `_drafts/`: local drafts; keep drafts out of production unless intentionally publishing.
- `.github/workflows/pages.yml`: GitHub Pages build/deploy workflow.

## Comments

Comments use Giscus backed by GitHub Discussions.

Current Giscus config:

- Repo: `b9932028-ui/chy.tw`
- Repo ID: `R_kgDOT8dgeQ`
- Category: `General`
- Category ID: `DIC_kwDOT8dgec4DDp1E`
- Mapping: `pathname`

GitHub Discussions must stay enabled on the repository, and the Giscus GitHub App must be installed for this repo.

## Git Hygiene

Usually commit:

- Source files
- Theme/layout/style changes
- Posts intended for publication
- Local-dev setup files that help reproduce the environment

Do not commit generated/local artifacts:

- `_site/`
- `.jekyll-cache/`
- `.sass-cache/`
- `.jekyll-metadata`
- `.bundle/`
- `vendor/`
- `Gemfile.lock` unless the project intentionally decides to pin all gem versions

Before committing, run:

```bash
git status --short --ignored
```

## Agent Notes

- Preserve the existing Jekyll/Klise structure unless there is a clear reason to change it.
- Prefer `relative_url` for internal links and assets so local preview and GitHub Pages both work.
- Do not change domain, Pages settings, GitHub repo visibility, or DNS assumptions without explicit user approval.
- Avoid committing unpublished drafts or local-only files unless the user explicitly asks.
- If changing GitHub Actions, verify the latest workflow run and the production URL after deployment.
