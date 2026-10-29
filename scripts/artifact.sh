#!/bin/sh
# Builds the claude.ai preview from public/index.html: drops the standalone document shell (the preview adds its own)
# and loads fonts and three.js from public CDNs, because the preview cannot load local files.
out=${1:-dist-artifact/index.html}; mkdir -p "$(dirname "$out")"
sed -e '/<!--standalone-->/d' \
    -e 's#<link rel="stylesheet" href="fonts/fonts.css">#<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Young+Serif\&family=Gaegu:wght@400;700\&family=Figtree:wght@500;600\&display=swap">#' \
    -e 's#<script src="vendor/three.min.js"></script>#<script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>#' \
    public/index.html > "$out"
