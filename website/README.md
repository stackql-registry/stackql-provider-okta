# Website

This website is built using [Docusaurus](https://docusaurus.io/), a modern static website generator.

## Shared configuration

Navbar, footer, theme and plugin configuration is shared across the StackQL
provider microsites via [`stackql/docusaurus-config`](https://github.com/stackql/docusaurus-config),
vendored into `.shared-config/` at build time. The `vendor-config` script runs
automatically before `start` and `build` (it clones the shared config, so network
access to GitHub is required). Site-local files are `provider.js` (the provider
identity), the thin `docusaurus.config.js` / `sidebars.js` wrappers, the
components/theme under `src/`, and the assets under `static/`.

## Installation

```bash
yarn
```

## Local Development

```bash
yarn start
```

This command starts a local development server and opens up a browser window. Most changes are reflected live without having to restart the server.

## Build

```bash
yarn build
```

This command generates static content into the `build` directory and can be served using any static contents hosting service.

## Deployment

Using SSH:

```bash
USE_SSH=true yarn deploy
```

Not using SSH:

```bash
GIT_USER=<Your GitHub username> yarn deploy
```

If you are using GitHub pages for hosting, this command is a convenient way to build the website and push to the `gh-pages` branch.
