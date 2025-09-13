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