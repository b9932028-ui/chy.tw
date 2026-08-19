# How To

Operational notes for maintaining and previewing `chy.tw`.

## Deploy on GitHub Pages

1. Push this repository to GitHub.
2. Open the repository on GitHub.
3. Go to `Settings -> Pages`.
4. Under `Build and deployment`, set `Source` to `GitHub Actions`.
5. Push to `main` or `master`, or run the `Deploy Jekyll site to GitHub Pages` workflow manually.

The workflow builds the site with Bundler, so the template can use Jekyll plugins that are not available in GitHub Pages' built-in Jekyll builder.

## Customize

- Site settings: `_config.yml`
- Navigation: `_data/menus.yml`
- Homepage layout: `_layouts/home.html`
- About page: `about.md`
- Blog posts: `_posts/`
- Styles: `_sass/` and `assets/css/style.scss`

## Local Preview

With Docker:

```powershell
.\dev\serve.ps1
```

Then open `http://localhost:4000`.

With local Ruby:

```bash
bundle install
bundle exec jekyll serve
```

Then open `http://localhost:4000`.
