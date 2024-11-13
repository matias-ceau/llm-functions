#!/usr/bin/bash


cd "$GIT_REPOS/matias-ceau/llm-functions" || echo "no forks on this machine"
argc link-web-search web_search_perplexity.sh
argc list@tool > tools.txt
argc list@agent > agents.txt
functions_path="$(aichat --info | rg '^functions' | awk '{print $2}')"
[ -s "$functions_path" ] && echo "found function symlinks"
rm "$functions_path"
argc build
argc install
