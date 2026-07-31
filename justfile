#!/usr/bin/env -S just --justfile

import 'justfile.bootstrap'

PANDOCOPT := ' --from markdown+pipe_tables+grid_tables+raw_attribute+raw_html+fenced_divs+yaml_metadata_block-tex_math_dollars-smart ' \
        + ' --columns=60 ' \
        + ' --data-dir='+XDIR+' ' \
        + ' --resource-path='+XDIR+' ' \
        + ' --include-before-body=templates/diceset.typ ' \
        + ' --include-before-body=templates/nerdfont.typ ' \
        + ' --include-before-body=templates/notosymbol.typ ' \
        + ' --include-before-body=templates/ccsymbols.typ ' \
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
TYPSTPKGOPT := ' --package-cache-path '+XLIB+'/typst-cache/ '+' --package-path '+XLIB+'/typst/ '
#TYPSTCOMPILEOPT := ' --no-pdf-tags --pdf-standard a-4 '
TYPSTCOMPILEOPT := ' --no-pdf-tags  --pdf-standard 1.7 '

#TYPSTEXE := 'HTTPS_PROXY=http://127.0.0.1:666/ time '+XBIN+'/typst-'+TYPST_RELEASE+'-'+XBINARCH
TYPSTEXE := XBIN+'/typst-'+TYPST_RELEASE+'-'+XBINARCH
TYPSTNEXE := XBIN+'/typst-'+TYPST_NEXT+'-'+XBINARCH

default: build

build-sub: \
    (build-dir XDIR+'/markdown/test1/' XDIR+'/out/test1.pdf')

build-next: build-pandoc build-typst-next
    @echo "{{ABIN}}"

build: build-pandoc build-typst-release
    @echo "{{ABIN}}"

build-pandoc:
    #!/bin/sh
    mkdir -p ./out
    echo "... executing pandoc"
    export PANDOC_LUA_LIB="{{XDIR}}/filters/?.lua;{{XDIR}}/lib/lua/?.lua"
    {{PANDOCEXE}} {{PANDOCOPT}} ./markdown/*.md -o ./out/document.typ

debug-pandoc:
    #!/bin/sh
    mkdir -p ./out
    echo "... debug pandoc"
    export PANDOC_LUA_LIB="{{XDIR}}/filters/?.lua;{{XDIR}}/lib/lua/?.lua"
    {{PANDOCEXE}} {{PANDOCOPT}} ./markdown/*.md -t native -o ./out/document.native

build-typst _VERSION :
    #!/bin/sh
    mkdir -p ./out
    for x in ./out/*.typ; do
        y=$(basename $x .typ)
        echo "... executing typst with '$y'"
        {{XBIN}}/typst-{{_VERSION}}-{{XBINARCH}} compile {{TYPSTCOMPILEOPT}} {{TYPSTOPT}} {{TYPSTPKGOPT}}  --root {{XDIR}} $x ./out/$y.pdf
        open ./out/$y.pdf >/dev/null 2>&1
    done

build-typst-next: (build-typst TYPST_NEXT)

build-typst-release: (build-typst TYPST_RELEASE)

build-pdf _file: (build-file _file _file+".pdf")

build-dir _dir _out:
    #!/bin/sh -x
    _id=$(uuidgen)
    _tmp="{{XDIR}}/out/$_id"
    mkdir -p $_tmp
    cp {{_dir}}/*.md $_tmp/
    echo "... executing pandoc $_tmp"
    export PANDOC_LUA_LIB="{{XDIR}}/filters/?.lua;{{XDIR}}/lib/lua/?.lua"
    {{PANDOCEXE}} {{PANDOCOPT}} $_tmp/*.md -o $_tmp/$_id.typ
    echo "... executing typst $_id.typ"
    cp $_tmp/$_id.typ {{_out}}.typ
    {{TYPSTEXE}} compile {{TYPSTCOMPILEOPT}} {{TYPSTOPT}}  --root {{XDIR}} $_tmp/$_id.typ {{_out}}
    rm -rf $_tmp

build-dir-debug _dir _out:
    #!/bin/sh
    _id=$(uuidgen)
    _tmp="{{XDIR}}/out/$_id"
    mkdir -p $_tmp
    cp {{_dir}}/*.md $_tmp/
    echo "... executing pandoc $_tmp"
    export PANDOC_LUA_LIB="{{XDIR}}/filters/?.lua;{{XDIR}}/lib/lua/?.lua"
    {{PANDOCEXE}} {{PANDOCOPT}} $_tmp/*.md -o $_tmp/$_id.typ
    echo "... executing typst $_id.typ"
    {{TYPSTEXE}} compile {{TYPSTCOMPILEOPT}} {{TYPSTOPT}}  --root {{XDIR}} $_tmp/$_id.typ {{_out}}
    cp $_tmp/$_id.typ {{_out}}.typ
    rm -rf $_tmp

build-file _file _out:
    #!/bin/sh
    _id=$(uuidgen)
    _tmp="{{XDIR}}/out/$_id"
    mkdir -p $_tmp
    cp {{_file}} $_tmp/
    echo "... executing pandoc $_tmp"
    export PANDOC_LUA_LIB="{{XDIR}}/filters/?.lua;{{XDIR}}/lib/lua/?.lua"
    {{PANDOCEXE}} {{PANDOCOPT}} $_tmp/*.md -o $_tmp/$_id.typ
    cp $_tmp/$_id.typ {{_file}}.typ
    echo "... executing typst $_id.typ"
    {{TYPSTEXE}} compile {{TYPSTCOMPILEOPT}} {{TYPSTOPT}}  --root {{XDIR}} $_tmp/$_id.typ {{_out}}
    rm -rf $_tmp

build-typst-file _file _out _input:
    #!/bin/sh
    echo "... executing typst {{_file}}"
    {{TYPSTEXE}} compile {{TYPSTCOMPILEOPT}} {{TYPSTOPT}}  --input "{{_input}}" {{_file}}  {{_out}}

build-file-debug _file _out:
    #!/bin/sh
    _id=$(uuidgen)
    _tmp="{{XDIR}}/out/$_id"
    mkdir -p $_tmp
    cp {{_file}} $_tmp/
    echo "... executing pandoc $_tmp"
    export PANDOC_LUA_LIB="{{XDIR}}/filters/?.lua;{{XDIR}}/lib/lua/?.lua"
    {{PANDOCEXE}} {{PANDOCOPT}} $_tmp/*.md -o $_tmp/$_id.typ
    echo "... executing typst $_id.typ"
    {{TYPSTEXE}} compile {{TYPSTCOMPILEOPT}} {{TYPSTOPT}}  --root {{XDIR}} $_tmp/$_id.typ {{_out}}
    cp $_tmp/$_id.typ {{_out}}.typ
    rm -rf $_tmp

test-typst:
    #!/bin/sh
    mkdir -p ./out
    for x in {{XDIR}}/out/*.typ; do
        y=$(basename $x .typ)
        echo "... executing typst with '$y'"
        {{TYPSTEXE}} compile {{TYPSTCOMPILEOPT}} {{TYPSTOPT}}  --root {{XDIR}} --timings ./out/$y.time.json $x ./out/$y.pdf
    done

bootstrap:
    #!/bin/sh
    (cd {{XDIR}} && just -f justfile.bootstrap install)

#dump-template:
#    {{PANDOCEXE}} --print-default-template=typst > ./template/default.typ

list-font-files:
    #!/bin/sh
    mkdir -p {{XTMP}}
    find {{XFNT}} -type f -name '*.?tf' |sort -u > {{XTMP}}/fonts.list
    n=$(wc -l {{XTMP}}/fonts.list)

    for x in $(cat {{XTMP}}/fonts.list); do
        otfinfo -f $x | awk '{print $1}'
    done | sort -u > {{XTMP}}/fea.list

    rm -f {{XTMP}}/fonts.fea.jsonl

    for x in $(cat {{XTMP}}/fonts.list); do
        y=$(basename $x)
        otfinfo -f $x | awk '{print $1}' > {{XTMP}}/fea.list.font

        echo -n '{ font:"'$y'"'
        for z in $(cat {{XTMP}}/fea.list |sort -u); do
            echo -n ', "'$z'":'
            if fgrep -w $z {{XTMP}}/fea.list.font 1>/dev/null 2>/dev/null; then
                echo -n '1'
            else
                echo -n '0'
            fi
        done
        echo '}'
    done > {{XTMP}}/fea.jsonl

    qsv jsonl {{XTMP}}/fea.jsonl > {{XTMP}}/fea.csv

    #rm -rf {{XTMP}}

list-otfinfo-dir _dir:
    #!/bin/sh
    for x in $(find {{_dir}} -name '*.?tf'|sort); do
        f=$(basename "$x")
        echo "$f psname=[$(otfinfo -p "$x")] family=[$(otfinfo -a $x)]"
        #echo "$f"
        #otfinfo -i $x
    done

list-otfinfo-dir-detail _dir:
    #!/bin/sh
    for x in $(find {{_dir}} -name '*.?tf'|sort); do
        f=$(basename "$x")
        echo "$f"
        otfinfo -i $x
    done

list-font-dir _dir:
    {{TYPSTEXE}} fonts --ignore-embedded-fonts --ignore-system-fonts --font-path {{_dir}}

list-font-dir-variants _dir:
    {{TYPSTEXE}} fonts --ignore-embedded-fonts --ignore-system-fonts --font-path {{_dir}} --variants

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