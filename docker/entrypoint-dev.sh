#!/bin/sh
set -e
cd /srv/jekyll

echo "Installing Ruby gems (cached volume)..."
bundle install

echo "Installing Node dependencies (cached volume)..."
npm ci

echo "Building assets and Jekyll site..."
npm run build

exec bundle exec jekyll serve \
  --host 0.0.0.0 \
  --port "${JEKYLL_PORT:-4000}"
