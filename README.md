# Schapen in het Markdal

Een geschilderd uitzicht over de Mark naar Kasteel Bouvigne in Breda. Je tekent met je vinger een schaap op het gras of een vogel in de lucht, en die gaat grazen of vliegen. Tik een schaap aan en het blaat.

Iedereen heeft een eigen wei. Wat je tekent wordt in je eigen browser bewaard (localStorage), samen met je records: hoeveel schapen je ooit tekende en hoeveel er tegelijk in je wei stonden. Er is geen server en geen database.

## Wat erin zit

- `public/index.html`: de hele app (three.js-scène, olieverffilter, schapen, vogels, UI)
- `public/vendor/three.min.js`: three.js r128 (MIT, zie `three-LICENSE.txt`)
- `public/fonts/`: Young Serif, Gaegu en Figtree, zelf gehost via @fontsource (SIL Open Font License)
- `scripts/artifact.sh`: maakt een versie voor de claude.ai-preview (niet nodig voor hosting)

## Lokaal bekijken

```sh
npm install
npm run dev
```

Of zonder tooling: `cd public && python3 -m http.server` en open http://localhost:8000.

## Live zetten op Cloudflare

Eenmalig:

```sh
npm install
npx wrangler login
npm run deploy
```

Je krijgt een adres als `markdal.<jouw-account>.workers.dev`. Een eigen domein koppel je in het Cloudflare-dashboard onder Workers > markdal > Domains.

Alternatief zonder terminal: maak in het dashboard een Workers-project aan vanuit deze GitHub-repo; het leest `wrangler.toml` en publiceert de map `public`.

Het kan ook op elke andere statische host (Vercel, Netlify, GitHub Pages): zet daar de map `public` neer.
