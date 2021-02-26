#!/bin/bash

rm -rf public

hugo --config config-epub.yaml

cd public
mkdir OEBPS

mv darkroom guides-tutorials lighttable lua map module-reference overview preferences-settings print slideshow special-topics tethering OEBPS
mv content.opf toc.ncx OEBPS

zip -rX ../darktable.epub mimetype OEBPS META-INF
