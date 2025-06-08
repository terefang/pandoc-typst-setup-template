# pandoc typst setup template

a template to setup a pandoc and typst project for pdf publication

## Prerequisites

* a suitable complete POSIX environment and shell (bash, mksh, ...) like Linux
* wget download tool — https://www.gnu.org/software/wget/
* just build tool – https://github.com/casey/just/

## Bootstrapping on x86_64

```
$ git clone https://github.com/terefang/pandoc-typst-setup-template
$ cd pandoc-typst-setup-template
$ just bootstrap
```

this will download common fonts, and well known versions of typst and pandoc.

## Project Layout

TODO

## Project Build

```
$ just build
```

this will build and output the result document into `out/document.pdf`.

```
$ just pacakge
```

this will zip up an archive for offline usage.

## Features

TODO
