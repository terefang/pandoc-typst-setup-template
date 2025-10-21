// various admonition boxes

// --- special utilities to make it standalone
// editited to not clash with other modules

// https://gist.github.com/PgBiel/2976c9d0ed5638ef57633ce7233928ea
// MIT No Attribution -- Copyright (c) 2023 Pg Biel
#let gh-admons-stick-together(a, b, threshold: 3em) = {
  block(a + v(threshold), breakable: false)
  v(-1 * threshold)
  b
}

// From: https://github.com/typst/typst/issues/1939#issuecomment-1680154871
#let gh-admons-colorize(svg, color) = {
  let blk = black.to-hex();
  if svg.contains(blk) {
    svg.replace(blk, color.to-hex())
  } else {
    svg.replace("<svg ", "<svg fill=\""+color.to-hex()+"\" ")
  }
}

// Returns a new SVG image loaded from the specified path, filled with the specified color.
#let gh-admons-color-svg-path(
  path,
  color,
  ..args,
) = {
  let data = gh-admons-colorize(read(path), color)
  return image(bytes(data), ..args)
}

// Returns a new SVG image loaded from the specified string (SVG content), filled with the specified color.
#let gh-admons-color-svg-string(
  svg,
  color,
  ..args,
) = {
  let data = gh-admons-colorize(svg, color)
  return image(bytes(data), ..args)
}

// from https://github.com/FlandiaYingman/note-me/blob/main/note-me.typ

#let gh-admons-admonition(
  icon-path: "/templates/admons/info.svg",
  icon-string: none,
  icon: none,
  title: "Admonition",
  title-font: none,
  font: none,
  color: color.black,
  foreground-color: auto,
  background-color: none,
  children
) = block(
  width: 100%,
  inset: (left: 1.25em, right: .5em, top: .5em, bottom: .5em),
  stroke: (left: 1.75pt + color),
  fill: background-color,
  [
    #gh-admons-stick-together(
      context stack(
        dir: if (text.dir == auto) { ltr } else { text.dir },
        spacing: 1em,
        align(horizon, {
          //assert(
          //  icon-path != none or
          //  icon-string != none or
          //  icon != none,
          //  message: "Either `icon-path`, `icon-string` or `icon` must be specified in the argument."
          //)
          if (icon != none) {
            icon
          }
          else if (icon-string != none) {
            gh-admons-color-svg-string(icon-string, color, width: 1em, height: 1em)
          }
          else if (icon-path != none) {
            gh-admons-color-svg-path(icon-path, color, width: 1em, height: 1em)
          }
        }),
        if (title-font == none) {
            align(horizon, text(weight: "bold", fill: color, title))
        }
        else {
            align(horizon, text(font: title-font, weight: "bold", fill: color, title))
        }
      ),
      {
        if (foreground-color == auto) {
            if (font == none) {
              text(children)
            }
            else {
              text(font: font, children)
            }
        } else {
            if (font == none) {
              text(fill: foreground-color, children)
            }
            else {
              text(font: font, fill: foreground-color, children)
            }
        }
      },
      threshold: 3.175em,
    )
  ],
)

#let gh-admon = gh-admons-admonition;

#let gh-admons-note(font: none,title-font: none,title: "Note", color: rgb(9, 105, 218), foreground-color: auto, background-color: none, children) = gh-admons-admonition(
  icon-path: "/templates/admons/info.svg",
  title: title,
  title-font: title-font,
  font: font,
  color: color,
  foreground-color: foreground-color,
  background-color: background-color,
  children
)
#let gh-admons-tip(font: none,title-font: none,title: "Tip", color: rgb(31, 136, 61), foreground-color: auto, background-color: none, children) = gh-admons-admonition(
  icon-path: "/templates/admons/light-bulb.svg",
  title: title,
  title-font: title-font,
  font: font,
  color: color,
  foreground-color: foreground-color,
  background-color: background-color,
  children
)
#let gh-admons-important(font: none,title-font: none,title: "Important", color: rgb(130, 80, 223), foreground-color: auto, background-color: none, children) = gh-admons-admonition(
  icon-path: "/templates/admons/report.svg",
  title: title,
  title-font: title-font,
  font: font,
  color: color,
  foreground-color: foreground-color,
  background-color: background-color,
  children
)
#let gh-admons-warning(font: none,title-font: none,title: "Warning", color: rgb(154, 103, 0), foreground-color: auto, background-color: none, children) = gh-admons-admonition(
  icon-path: "/templates/admons/alert.svg",
  title: title,
  title-font: title-font,
  font: font,
  color: color,
  foreground-color: foreground-color,
  background-color: background-color,
  children
)
#let gh-admons-caution(font: none,title-font: none,title: "Caution", color: rgb(209, 36, 47), foreground-color: auto, background-color: none, children) = gh-admons-admonition(
  icon-path: "/templates/admons/stop.svg",
  title: title,
  title-font: title-font,
  font: font,
  color: color,
  foreground-color: foreground-color,
  background-color: background-color,
  children
)
#let gh-admons-todo(font: none,title-font: none,title: "ToDo", foreground-color: auto, background-color: none, color: rgb(209, 36, 47), children) = gh-admons-admonition(
  icon-path: "/templates/admons/question.svg",
  title: title,
  title-font: title-font,
  font: font,
  color: color,
  foreground-color: foreground-color,
  background-color: background-color,
  children
)

// https://github.com/analytics-labs/typst-admonitions
// MIT License
//
// Copyright (c) 2025 Open Source Contributor
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#let adoc-admonition(
  type: none, // the admonition type, e.g. Tip, Info, Note, Warning, ...
  title: none, // bold title in first line
  icon: none, // admonition icon
  align-icon: center + top, // how to align the admonition icon
  icon-color: luma(0%), // admonition icon for textual icons
  icon-size: 30pt, // admonition icon for textual icons
  bar: none, // right-side bar of the icon
  background-color: none, // the background color of the entire admonition block
  border: (:), // border around the entire admonition block
  radius: (:), // border radius
  inset: (:), // inset of the entire admonition block
  breakable: true, // whether the admonition block is breakable
  text-color: luma(0%), // main body text color
  text-spacing: 1.2em, // spacing between paragraphs in content
  body // actual admonition content
) = {
  // admonitions that are not colored can have inset = 0em
  if background-color != none or border != (:) { inset = 1em }
  block(fill: background-color, radius: radius, stroke: border, inset: inset, breakable: breakable,
    grid(
      columns: (icon-size * 1.5, 1fr),
      grid.cell(
        stroke: (right: bar),
        inset: (left: -0.25em),
        align(align-icon, text(bottom-edge: "descender", fill: icon-color, size: icon-size, icon))
      ),
      grid.cell(
        inset: (left: 1em),
        text(fill: text-color, [
          #set par(spacing: text-spacing)
          #strong(smallcaps(type))#if title != none and type != none [:] #title

          #body
        ])
      )
    )
  )
}

#let adoc-admon-tip(type: "Tip", title: none, icon: nf-fa-lightbulb-g, align-icon: center + top, icon-color: luma(0%), bar: gray, background-color: none, border: (:), radius: (:), inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-tip-colored(type: "Tip", title: none, icon: nf-fa-lightbulb-g, align-icon: center + top, icon-color: luma(0%), bar: yellow, background-color: yellow.lighten(60%), border: yellow, radius: 1em, inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-info(type: "Info", title: none, icon: emoji.info, align-icon: center + top, icon-color: blue, bar: blue, background-color: none, border: (:), radius: (:), inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-info-colored(type: "Info", title: none, icon: emoji.info, align-icon: center + top, icon-color: blue, bar: blue, background-color: blue.lighten(80%), border: blue, radius: 1em, inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-important(type: "Important", title: none, icon: emoji.excl, align-icon: center + top, icon-color: luma(0%), bar: red, background-color: none, border: (:), radius: (:), inset: (:), breakable: true, text-color: red, text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-important-colored(type: "Important", title: none, icon: emoji.excl, align-icon: center + top, icon-color: luma(0%), bar: red, background-color: red.lighten(80%), border: red, radius: 1em, inset: (:), breakable: true, text-color: red, text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-warning(type: "Warning", title: none, icon: emoji.warning, align-icon: center + top, icon-color: luma(0%), bar: luma(0%), background-color: none, border: (:), radius: (:), inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-warning-colored(type: "Warning", title: none, icon: emoji.warning, align-icon: center + top, icon-color: luma(0%), bar: luma(0%), background-color: yellow.lighten(40%), border: luma(0%), radius: 1em, inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-caution(type: "Caution", title: none, icon: nf-md-sign_caution-g, align-icon: center + top, icon-color: luma(0%), bar: orange, background-color: none, border: (:), radius: (:), inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-caution-colored(type: "Caution", title: none, icon: nf-md-sign_caution-g, align-icon: center + top, icon-color: luma(0%), bar: orange, background-color: orange.lighten(60%), border: orange, radius: 1em, inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-danger(type: "Danger", title: none, icon: emoji.bomb, align-icon: center + top, icon-color: luma(0%), bar: luma(0%), background-color: none, border: (:), radius: (:), inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-danger-colored(type: "Danger", title: none, icon: emoji.bomb, align-icon: center + top, icon-color: luma(0%), bar: luma(0%), background-color: black.lighten(60%), border: luma(0%), radius: 1em, inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-construction(type: "Under Construction", title: none, icon: nsy-building-construction-g, align-icon: center + top, icon-color: luma(0%), bar: luma(0%), background-color: none, border: (:), radius: (:), inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-construction-colored(type: "Under Construction", title: none, icon: nsy-building-construction-g, align-icon: center + top, icon-color: luma(0%), bar: yellow, background-color: black.lighten(80%), border: yellow, radius: 1em, inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-note(type: "Note", title: none, icon: nsy-lower-left-ballpoint-pen-g, align-icon: center + top, icon-color: luma(0%), bar: gray, background-color: none, border: (:), radius: (:), inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-note-colored(type: "Note", title: none, icon: nsy-lower-left-ballpoint-pen-g, align-icon: center + top, icon-color: luma(0%), bar: gray, background-color: gray.lighten(60%), border: gray, radius: 1em, inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-talk(type: "Talk", title: none, icon: emoji.bubble.speech, align-icon: center + top, icon-color: luma(0%), bar: aqua, background-color: none, border: (:), radius: (:), inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-talk-colored(type: "Talk", title: none, icon: emoji.bubble.speech, align-icon: center + top, icon-color: luma(0%), bar: aqua, background-color: aqua.lighten(80%), border: aqua, radius: 1em, inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-alert(type: "Alert", title: none, icon: nsy-warning-sign-g, align-icon: center + top, icon-color: luma(0%), bar: red, background-color: none, border: (:), radius: (:), inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-alert-colored(type: "Alert", title: none, icon: nsy-warning-sign-g, align-icon: center + top, icon-color: luma(0%), bar: red, background-color: red.lighten(80%), border: red, radius: 1em, inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-experiment(type: "Experiment", title: none, icon: nf-md-test_tube-g, align-icon: center + top, icon-color: luma(0%), bar: olive, background-color: none, border: (:), radius: (:), inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-experiment-colored(type: "Experiment", title: none, icon: nf-md-test_tube-g, align-icon: center + top, icon-color: luma(0%), bar: olive, background-color: olive.lighten(80%), border: olive, radius: 1em, inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-snippet(type: "Snippet", title: none, icon: nf-oct-file_code-g, align-icon: center + top, icon-color: luma(0%), bar: eastern, background-color: none, border: (:), radius: (:), inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-snippet-colored(type: "Snippet", title: none, icon: nf-oct-file_code-g, align-icon: center + top, icon-color: luma(0%), bar: eastern, background-color: eastern.lighten(80%), border: eastern, radius: 1em, inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)

// custom
#let adoc-admon-example(type: "Example", title: none, icon: nf-md-file_document_outline-g, align-icon: center + top, icon-color: luma(0%), bar: black, background-color: none, border: (:), radius: (:), inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)
#let adoc-admon-example-colored(type: "Example", title: none, icon: nf-md-file_document_outline-g, align-icon: center + top, icon-color: luma(0%), bar: black, background-color: none, border: black, radius: 1em, inset: (:), breakable: true, text-color: luma(0%), text-spacing: 1.2em, body) = adoc-admonition(type: type, title: title, text-spacing: text-spacing, icon: icon, align-icon: align-icon, icon-color: icon-color, bar: bar, background-color: background-color, border: border, radius: radius, inset: inset, breakable: breakable, text-color: text-color, body)

