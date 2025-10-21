#!/usr/bin/env -S just --justfile

import 'justfile.bootstrap'

PANDOCOPT := ' --from markdown+pipe_tables+grid_tables+raw_attribute+raw_html+fenced_divs+yaml_metadata_block-tex_math_dollars ' \
        + ' --columns=60 ' \
        + ' --data-dir='+XDIR+' ' \
        + ' --resource-path='+XDIR+' ' \
        + ' --include-before-body=templates/diceset.typ ' \
        + ' --include-before-body=templates/zapfding.typ ' \
        + ' --include-before-body=templates/nerdfont.typ ' \
        + ' --include-before-body=templates/notosymbol.typ ' \
        + ' --include-before-body=templates/admons.typ ' \
        + ' --include-before-body=templates/boxes.typ ' \
        + ' --lua-filter=typst-header.lua ' \
        + ' --lua-filter=typst-colorboxes.lua ' \
        + ' --lua-filter=typst-tablespan.lua ' \
        + ' --lua-filter=typst-tabledivs.lua ' \
        + ' --lua-filter=typst-customdivs.lua ' \
        + ' --lua-filter=typst-pf2-div-styles.lua ' \
        + ' --lua-filter=typst-alerts.lua ' \
        + ' --lua-filter=typst-htmlfunc.lua ' \
        + ' --lua-filter=typst-pagebreak.lua ' \
        + ' --lua-filter=typst-entities.lua ' \
        + ' --embed-resources --standalone ' \
        + ' --ascii ' \
        + ' --template='+XDIR+'/templates/template.typ '

##         + ' --include-before-body=templates/unicode.typ ' \

PANDOCEXE := XBIN+'/pandoc-'+PANDOC_RELEASE+'-'+XBINARCH

# --ignore-embedded-fonts
TYPSTOPT := ' --ignore-system-fonts --font-path '+XFNT
TYPSTPKGOPT := ' --package-cache-path '+XLIB+'/typst/ '+' --package-path '+XLIB+'/typst/ '

TYPSTEXE := 'HTTPS_PROXY=http://127.0.0.1:666/ '+XBIN+'/typst-'+TYPST_RELEASE+'-'+XBINARCH

default: build

build: build-pandoc build-typst
    @echo "{{ABIN}}"

build-pandoc:
    #!/bin/sh
    mkdir -p ./out
    echo "... executing pandoc"
    {{PANDOCEXE}} {{PANDOCOPT}} ./markdown/*.md -o ./out/document.typ

debug-pandoc:
    #!/bin/sh
    mkdir -p ./out
    echo "... debug pandoc"
    {{PANDOCEXE}} {{PANDOCOPT}} ./markdown/*.md -t native -o ./out/document.native

build-typst:
    #!/bin/sh
    mkdir -p ./out
    for x in ./out/*.typ; do
        y=$(basename $x .typ)
        echo "... executing typst with '$y'"
        {{TYPSTEXE}} compile {{TYPSTOPT}} {{TYPSTPKGOPT}}  --root {{XDIR}} $x ./out/$y.pdf
    done

build-pdf _file: (build-file _file _file+".pdf")

build-dir _dir _out:
    #!/bin/sh
    _id=$(uuidgen)
    _tmp="{{XDIR}}/out/$_id"
    mkdir -p $_tmp
    cp {{_dir}}/*.md $_tmp/
    echo "... executing pandoc $_tmp"
    {{PANDOCEXE}} {{PANDOCOPT}} $_tmp/*.md -o $_tmp/$_id.typ
    echo "... executing typst $_id.typ"
    {{TYPSTEXE}} compile {{TYPSTOPT}}  --root {{XDIR}} $_tmp/$_id.typ {{_out}}
    rm -rf $_tmp

build-file _file _out:
    #!/bin/sh
    _id=$(uuidgen)
    _tmp="{{XDIR}}/out/$_id"
    mkdir -p $_tmp
    cp {{_file}} $_tmp/
    echo "... executing pandoc $_tmp"
    {{PANDOCEXE}} {{PANDOCOPT}} $_tmp/*.md -o $_tmp/$_id.typ
    echo "... executing typst $_id.typ"
    {{TYPSTEXE}} compile {{TYPSTOPT}}  --root {{XDIR}} $_tmp/$_id.typ {{_out}}
    rm -rf $_tmp

test-typst:
    #!/bin/sh
    mkdir -p ./out
    for x in {{XDIR}}/out/*.typ; do
        y=$(basename $x .typ)
        echo "... executing typst with '$y'"
        {{TYPSTEXE}} compile {{TYPSTOPT}}  --root {{XDIR}} --timings ./out/$y.time.json $x ./out/$y.pdf
    done

bootstrap:
    #!/bin/sh
    (cd {{XDIR}} && just -f justfile.bootstrap install)

#dump-template:
#    {{PANDOCEXE}} --print-default-template=typst > ./template/default.typ

list-font-dir _dir:
    {{TYPSTEXE}} fonts --ignore-system-fonts --font-path {{_dir}}

list-font-dir-variants _dir:
    {{TYPSTEXE}} fonts --ignore-system-fonts --font-path {{_dir}} --variants

list-fonts:
    {{TYPSTEXE}} fonts {{TYPSTOPT}}

list-fonts-variants:
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