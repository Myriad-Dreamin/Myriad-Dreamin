// @ts-check
import { defineConfig } from "astro/config";
import sitemap from "@astrojs/sitemap";
import { typst } from "astro-typst";

// https://astro.build/config
export default defineConfig({
  // Deploys to GitHub Pages
  site: "https://myriad-dreamin.github.io",

  integrations: [
    sitemap(),
    typst({
      // Always builds HTML files
      mode: {
        default: "html",
        detect: () => "html",
      },
    }),
  ],
});
