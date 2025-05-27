#import "/typ/templates/blog.typ": *
#show: main.with(
  title: "Typst Syntax",
  desc: [List of Typst Syntax, for rendering tests.],
  date: "2025-05-27",
  tags: (
    blog-tags.programming,
    blog-tags.typst,
  ),
)

= Raw Blocks

This is a inline raw block `class T`.

This is a inline raw block ```js class T```.

Js syntax highlight are handled by syntect:

```js
class T {};
```

Typst syntax hightlight are specially handled internally:

```typ
#let f(x) = x;
```
