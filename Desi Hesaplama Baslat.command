#!/bin/bash
# macOS / Linux: Desi Hesaplama programını açar (index.html ile aynı klasörde durmalı)
cd "$(dirname "$0")"
if command -v open >/dev/null; then open index.html; else xdg-open index.html; fi
