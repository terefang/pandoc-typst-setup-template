//  https://github.com/lkoehl/typst-boxes
//
//  MIT License
//
//  Copyright (c) 2023 lkoehl
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
// - imported "Sun Dec  1 04:00:00 AM CET 2024"
//
// - edited, extended, simplified by Alfred Reibenschuh
//

#let box-colors = (
  default: (stroke: luma(70), fill: white, title: white),
  black: (stroke: black, fill: rgb(238, 238, 238), title: white),
  red: (stroke: rgb(237, 32, 84), fill: rgb(253, 228, 224), title: white),
  green: (stroke: rgb(102, 174, 62), fill: rgb(235, 244, 222), title: white),
  blue: (stroke: rgb(0, 64, 255), fill: rgb(221, 238, 255), title: white),
  yellow: (stroke: rgb(238, 238, 0), fill: rgb(255, 255, 216), title: black),
  purple: (stroke: rgb(238, 0, 238), fill: rgb(255, 221, 255), title: white),
  cyan: (stroke: rgb(0, 238, 238), fill: rgb(221, 255, 255), title: black),
  magenta: (stroke: rgb(255, 0, 128), fill: rgb(255, 192, 221), title: white),
  orange: (stroke: rgb(255, 115, 0), fill: rgb(255, 221, 204), title: white),
  white: (stroke: rgb(0, 0, 0), fill: white, title: black),
)

#let colorbox(
  title: none,
  font: none,
  font-size: none,
  leading: none,
  subtitle: "subtitle",
  box-colors: box-colors,
  color: "default",
  stroke: 1pt,
  inset: 8pt,
  radius: 0pt,
  width: auto,
  body,
) = {
  if title != none {
    return block(
      fill: box-colors.at(color).fill,
      stroke: stroke + box-colors.at(color).stroke,
      radius: radius,
      width: width,
      grid(
        gutter:0pt,
        columns:1,
        block(
              fill: box-colors.at(color).stroke,
              inset: inset,
              width:100%,
              radius: (top-left: radius, top-right: radius),
              {
              set text(font: font) if(font!=none)
              set text(size: font-size) if(font-size!=none)
              text(fill: box-colors.at(color).title, weight: "bold", title)
              }
            ),
        block(
          width: 100%,
          inset: (x: inset, bottom: inset, top: if title == none { inset } else { inset/2 }),
          {
          set text(font: font) if(font!=none)
          set text(size: font-size) if(font-size!=none)
          set par(leading: leading) if(leading!=none)
          body
          }
        ),
      )
    )
  }
  return block(
    fill: box-colors.at(color).fill,
    stroke: stroke + box-colors.at(color).stroke,
    inset: inset,
    radius: radius,
    width: width,
  )[
  #set text(font: font) if(font!=none)
  #set text(size: font-size) if(font-size!=none)
  #set par(leading: leading) if(leading!=none)
  #body
  ]
}

#let outline-colorbox(
  title: "Title",
  box-colors: box-colors,
  color: "default",
  width: 100%,
  stroke: 1pt,
  inset: 8pt,
  radius: 0pt,
  centering: false,
  body,
) = {
  return block(
    fill: box-colors.at(color).fill,
    stroke: stroke + box-colors.at(color).stroke,
    radius: radius,
    width: width,
    above: 26pt,
  )[
    #if centering [
      #place(top + center, dy: -12pt)[
        #block(fill: box-colors.at(color).stroke, inset: inset, radius: radius)[
          #text(fill: white, weight: "bold")[#title]
        ]
      ]
    ] else [
      #place(top + start, dy: -12pt, dx: 20pt)[
        #block(fill: box-colors.at(color).stroke, inset: inset, radius: radius)[
          #text(fill: white, weight: "bold")[#title]
        ]
      ]
    ]

    #block(width: 100%, inset: (top: 20pt, x: 10pt, bottom: 10pt))[
      #body
    ]
  ]
}
