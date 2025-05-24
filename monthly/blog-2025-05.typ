#import "/typ/templates/monthly.typ": *

#show: main.with(
  title: "Myriad Dreamin Blog 2025-05",
  desc: [Archive of Blog posts in May 2025],
  date: "2025-05-31",
  tags: (
    blog-tags.programming,
    blog-tags.software,
    blog-tags.software-engineering,
  ),
)

#include "/content/article/temperament.typ"
#pagebreak(weak: true)

#include "/content/article/gcc.typ"
#pagebreak(weak: true)

#include "/content/article/revisit-old-memory.typ"
#pagebreak(weak: true)

#include "/content/article/shr.typ"
#pagebreak(weak: true)

#include "/content/article/domain-setup.typ"
#pagebreak(weak: true)

#include "/content/article/tinymist-2024-server-part.typ"
