#!/usr/bin/env -S just --justfile

# --include-before-body
# --include-after-body

XDIR := justfile_directory()
XBIN := XDIR+"/xbin"
XFNT := XDIR+"/fonts"

PANDOCOPT := ' --from markdown+pipe_tables+raw_attribute+raw_html+fenced_divs+yaml_metadata_block-tex_math_dollars ' \
        + ' --columns=60 ' \
        + ' --data-dir='+XDIR+' ' \
        + ' --resource-path='+XDIR+' ' \
        + ' --include-before-body=templates/diceset.typ ' \
        + ' --include-before-body=templates/zapfding.typ ' \
        + ' --include-before-body=templates/nerdfont.typ ' \
        + ' --include-before-body=templates/unicode.typ ' \
        + ' --include-before-body=templates/boxes.typ ' \
        + ' --lua-filter=typst-alerts.lua ' \
        + ' --lua-filter=typst-htmlfunc.lua ' \
        + ' --lua-filter=typst-pagebreak.lua ' \
        + ' --lua-filter=typst-tabledivs.lua ' \
        + ' --lua-filter=typst-tablespan.lua ' \
        + ' --lua-filter=typst-entities.lua ' \
        + ' --embed-resources --standalone ' \
        + ' --ascii ' \
        + ' --template='+XDIR+'/templates/template.typ '

PANDOCEXE := XBIN+'/pandoc'

TYPSTOPT := '--ignore-system-fonts --font-path '+XFNT

TYPSTEXE := XBIN+'/typst'

default: build

build: build-pandoc build-typst

build-pandoc:
    #!/bin/sh
    mkdir -p ./out
    echo "... executing pandoc"
    {{PANDOCEXE}} {{PANDOCOPT}} ./markdown/*.md -o ./out/document.typ

build-typst:
    #!/bin/sh
    mkdir -p ./out
    for x in ./out/*.typ; do
        y=$(basename $x .typ)
        echo "... executing typst with '$y'"
        {{TYPSTEXE}} compile {{TYPSTOPT}}  --root ./ $x ./out/$y.pdf
    done

bootstrap:
    #!/bin/sh
    (cd {{XDIR}} && just -f justfile.bootstrap install)

#dump-template:
#    {{PANDOCEXE}} --print-default-template=typst > ./template/default.typ

fonts:
    {{TYPSTEXE}} fonts {{TYPSTOPT}}

fonts-variants:
    {{TYPSTEXE}} fonts {{TYPSTOPT}} --variants

set-version ver:
    #!/bin/sh
    shtool version --set {{ver}} version.txt

show-version:
    #!/bin/sh
    shtool version version.txt

inc-version:
    #!/bin/sh
    shtool version -i l version.txt

drel-version:
    #!/bin/sh
    VER=$(shtool version version.txt)
    V=$(echo $VER |cut -f1 -d.)
    R=$(echo $VER |cut -f2 -d.)
    L=$(echo $VER |cut -f3 -d.)
    shtool version --set "$(date +%Y).$(date +%m).$L" version.txt
    shtool version -i l version.txt

package:
    #!/bin/sh
    VER=$(shtool version version.txt)
    zip -9 -r pandoc-typst-setup-template-$VER-$(shtool platform -t build).zip justfile assets filters fonts templates xbin