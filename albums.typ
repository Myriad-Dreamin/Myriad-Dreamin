
#let album-state = state("album", ())
#let album(x, y, z) = album-state.update(it => it + ((title: x, link: y, cover: z),))

#let main(body) = {
  context [
    #let albums = album-state.final()
    #metadata(albums) <albums>
  ]
  body
}

#show: main

#album(
  "Lilium Records - Lilium XX",
  "https://lilium.bandcamp.com/album/lilium-xx",
  "https://f4.bcbits.com/img/a0518881155_16.jpg",
)

#album(
  "Akisai - Landscapes",
  "https://akisai.bandcamp.com/album/landscapes",
  "https://f4.bcbits.com/img/a0249755784_16.jpg",
)

#album(
  "sea-no - 雨と読書",
  "https://sea-no.bandcamp.com/album/-",
  "https://f4.bcbits.com/img/a1035198687_16.jpg",
)

#album(
  "Otographic Music - Otographies",
  "https://www.discogs.com/ja/release/14978164-Various-Otographies",
  "https://i.discogs.com/SZC9Kw9FWVS8GBLSrXee3vn00JKvtoFil2-m_syZtb8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0OTc4/MTY0LTE2MzU1Nzc1/NjktNTAwMC5qcGVn.jpeg",
)

#album(
  "Diverse System - AD:PIANO VII -Alternative-",
  "https://diversesystem.bandcamp.com/album/ad-piano-vii-alternative",
  "https://f4.bcbits.com/img/a3184779540_16.jpg",
)

#album(
  "Light Notes Recordings - TT",
  "https://www.discogs.com/release/7754602-Various-TT",
  "https://i.discogs.com/UFdQTIapuReH4-bohxbFlUU85hbw7e8fsL5P3YsrRMc/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc3NTQ2/MDItMTQ0ODEwNjk1/OS0xMjk3LmpwZWc.jpeg",
)

#album(
  "相対性理論 - アワー ミュージック",
  "https://www.discogs.com/ja/release/2100932-%E7%9B%B8%E5%AF%BE%E6%80%A7%E7%90%86%E8%AB%96-%E6%B8%8B%E8%B0%B7%E6%85%B6%E4%B8%80%E9%83%8E-%E3%82%A2%E3%83%AF%E3%83%BC%E3%83%9F%E3%83%A5%E3%83%BC%E3%82%B8%E3%83%83%E3%82%AF",
  "https://i.discogs.com/wZhfcPzlgqoNOhT6X7vLJrTxTDwd1aZyzQ3rhUdzMn4/rs:fit/g:sm/q:90/h:447/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIxMDA5/MzItMTI2NDA0NjIy/NS5qcGVn.jpeg",
)
