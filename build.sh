#!/bin/sh
# Merge extra-words.txt into the pristine upstream dictionary, then build the xpi.
set -e
cd "$(dirname "$0")"
extra=$(grep -vE '^\s*(#|$)' extra-words.txt)
n=$(( $(sed -n 1p upstream/es-DO.dic) + $(printf '%s\n' "$extra" | wc -l) ))
{ echo "$n"; sed 1d upstream/es-DO.dic; printf '%s\n' "$extra"; } > src/dictionaries/es-DO.dic
v=$(node -p 'require("./src/manifest.json").version')
mkdir -p dist && rm -f dist/es-DO-"$v".xpi
(cd src && zip -qr -X ../dist/es-DO-"$v".xpi .)
echo "dist/es-DO-$v.xpi ($n words)"
