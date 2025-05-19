#import "/typ/templates/blog.typ": main
#show: main.with(
  title: "Personal Information",
  desc: [This is a test post.],
  date: "2025-04-25",
)

= 个人信息

- 名字：Miya Reiha
- 生日：12月24日
- 年龄：14

= Personal Information

- Name：Miya Reiha
- Birthday：12. 24
- Year：14

= About Me

#include "/content/other/about.typ"
