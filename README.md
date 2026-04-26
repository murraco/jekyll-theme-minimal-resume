# Minimal Resume -- Jekyll Theme

A clean, single-page resume theme built with Jekyll. Designed for developers who want a professional minimal resume without the bloat.

[Live Demo](https://jekyll-theme-minimal-resume.netlify.app) -- [Report a Bug](https://github.com/murraco/jekyll-theme-minimal-resume/issues)

[![Netlify Status](https://api.netlify.com/api/v1/badges/24d80ae8-c3d9-4645-a6d8-9e97fc8dec3c/deploy-status)](https://app.netlify.com/sites/jekyll-theme-minimal-resume/deploys)

# Stack

![](https://img.shields.io/badge/jekyll-✓-blue.svg)
![](https://img.shields.io/badge/html5-✓-blue.svg)
![](https://img.shields.io/badge/sass-✓-blue.svg)
![](https://img.shields.io/badge/sweet--scroll-✓-blue.svg)
![](https://img.shields.io/badge/particle--js-✓-blue.svg)
![](https://img.shields.io/badge/font--awesome-✓-blue.svg)
![](https://img.shields.io/badge/devicon-✓-blue.svg)
![](https://img.shields.io/badge/gulp-✓-blue.svg)

# Screenshoot

<p align="center">
  <img src="https://raw.githubusercontent.com/murraco/jekyll-theme-minimal-resume/master/screenshot.png" width="90%" alt="Theme screenshot" />
</p>

# If this helped, consider buying me a coffee! ☕️

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/murraco)

# Features

- Single-page layout with smooth scrolling
- Particle.js animated header
- Data-driven expertise section (no HTML editing needed)
- Responsive design (mobile-first)
- Social/SEO meta tags and JSON-LD structured data
- Sass-based styling with simple color customization
- Docker support for quick preview
- Deploys to GitHub Pages, Netlify, or any static host

# Quick Setup

1. Install Ruby and [Bundler](https://bundler.io/), and Node.js (LTS recommended).
2. Fork this repository and clone your fork.
3. Copy or edit `_config.yml` to personalize your site (see [Settings](#settings)).

# Development (local)

Styles and scripts are built from `src/` into `assets/` with **Gulp**; Jekyll then copies them into `_site`.

1. **Ruby dependencies:** use **Ruby 3.x** (see `.ruby-version`) so Bundler can resolve `github-pages`. With rbenv or asdf: `rbenv install` / `asdf install` as needed, then:

   ```bash
   bundle install
   ```

   Committing `Gemfile.lock` after a successful `bundle install` keeps CI and other machines on the same gem versions.

2. **Node dependencies**:

   ```bash
   npm install
   ```

3. **One-off build** (compile Sass/JS, then Jekyll):

   ```bash
   npm run build
   ```

4. **Live reload** (assets + Jekyll rebuild + BrowserSync on `_site`):

   ```bash
   npm run serve
   ```

   Or preview without BrowserSync after a build:

   ```bash
   npm run build && bundle exec jekyll serve
   ```

# Docker

Requirements: [Docker](https://docs.docker.com/get-docker/) and [Docker Compose V2](https://docs.docker.com/compose/install/) (`docker compose`).

## Quick preview (site built inside the image)

Use this to try the theme without installing Ruby or Node on your machine.

```bash
docker compose up --build
```

Open [http://localhost:4000](http://localhost:4000). The `github-pages` gem uses **Jekyll 3.x**, which does not include Jekyll 4's built-in live reload; restart the container to pick up changes, or use the [local workflow with `npm run serve`](#development-local) (BrowserSync).

- **Build only** (output stays in the container, no HTTP server):

  ```bash
  docker compose run --rm site bundle exec jekyll build
  ```

  To write `_site` on the host:

  ```bash
  docker compose run --rm -v "$(pwd)/_site:/out" site \
    sh -c "bundle exec jekyll build --destination /out"
  ```

## Development with the repo bind-mounted

Edits to `_config.yml`, `_includes/`, `src/`, etc. apply after you **restart** the container (the entrypoint runs `bundle install`, `npm ci`, and `npm run build` again). Named volumes cache gems and `node_modules` so the host tree does not need local `node_modules`.

```bash
docker compose -f docker-compose.yml -f docker-compose.dev.yml up --build
```

Stop with `Ctrl+C` or `docker compose down`. Volumes `jekyll_bundle` and `jekyll_node_modules` persist until you remove them (e.g. `docker volume rm`).

## Optional environment variables (development)

| Variable      | Default | Description              |
|---------------|---------|--------------------------|
| `JEKYLL_PORT` | `4000`  | HTTP port for Jekyll     |

Example:

```bash
JEKYLL_PORT=8080 docker compose -f docker-compose.yml -f docker-compose.dev.yml up
```

If you change the port, map it in `docker-compose.yml` as well (e.g. `"8080:8080"`).

## Environment variables

This theme does not require API keys or `.env` files. All customization is done via `_config.yml` and HTML includes.

# Settings

Fill in the following in `_config.yml` to customize your site.

## Site settings

```yml
description: A short description for meta tags
baseurl: "" # subpath of your site, e.g. /blog/
url: "https://your-domain.example" # full site URL including protocol (needed for canonical URLs, Open Graph, and JSON-LD)
lang: en # document language (<html lang="...">)
social_image: /assets/favicon.png # Open Graph / Twitter preview image (path from site root)
og_locale: en_US # optional; og:locale meta tag
theme_color: "#1a222c" # optional; mobile browser chrome color
```

## User settings

```yml
username: Your Name
user_description: Short bio shown on the page
user_title: Your headline
email: you@example.com
linkedin_username: yourprofile
github_username: yourprofile
```

> Set `url` and `baseurl` correctly before you deploy (GitHub Pages, Netlify, etc.). Social preview tags (`og:image`, etc.) need a valid `url` so absolute image URLs resolve.

## Expertise section (skills columns)

The three columns under "My Expertise" are driven by **`_data/expertise.yml`**: section titles, body copy, and Devicon class names per column (see [Devicon](https://devicon.dev/) for available icons bundled in the theme CSS). Edit that file instead of large HTML blocks.

After changing `_data/expertise.yml`, rebuild with Jekyll (or `npm run build` / `npm run serve`).

## Color and particle customization

- **Colors:** edit Sass variables under `src/styles/` (for example `src/styles/_vars.scss`).
- **Particles:** edit the configuration in `src/js/app.js` (see [particles.js](https://github.com/VincentGarreau/particles.js/) for options). After changes, run `npm run build` or `npm run serve` so `assets/js/main.js` is regenerated.

## Content

Edit `_includes/header.html` and `_includes/footer.html` for social links and layout. Use **`_data/expertise.yml`** for the expertise grid (see above). Add more pages via `index.html` or new files in the project root. Example link markup:

```html
<a aria-label="My Github" target="_blank" rel="noopener noreferrer" href="https://github.com/youruser">
  <i class="icon fa fa-github-alt" aria-hidden="true"></i>
</a>
```

# Testing

There are no automated tests in this repository; verify changes with `npm run build` and by opening the generated site under `_site/`.

# Author

**Mauricio Urraco** -- Full Stack Engineer with 10+ years of experience.

- [GitHub](https://github.com/murraco)
- [LinkedIn](https://www.linkedin.com/in/murraco)

# Credits

- [Nathan Randecker](https://github.com/nrandecker)

# Contribution

- Report issues
- Open pull request with improvements
- Spread the word
- Reach out to me directly at <mauriurraco@gmail.com>

# Buy me a coffee to show your support!

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/murraco)