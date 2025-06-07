#!/bin/bash
# Start Jekyll development server
echo "Starting Jekyll development server..."
bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload --drafts
