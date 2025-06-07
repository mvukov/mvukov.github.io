#!/bin/bash
# Build site for production
echo "Building Jekyll site..."
JEKYLL_ENV=production bundle exec jekyll build
echo "Build complete! Check _site/ directory"
