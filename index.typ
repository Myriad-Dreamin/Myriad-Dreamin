
#import "/typ/templates/html-toolkit.typ": load-html-template

/// Wraps the following content with the HTML template.
#show: load-html-template.with(
  "/typ/templates/template.html",
  extra-head: {
    html.elem("style", read("public/global.css"))
    html.elem("script", read("/public/main.js"))
  },
)

#show: html.elem.with(
  "main",
  attrs: ("class": "container"),
)

#html.elem("h1", "About Myriad Dreamin")

#show "PoeMagie": link.with("https://www.myriad-dreamin.com")

#import "about.typ": is-external
#is-external.update(true)
#include "about.typ"
