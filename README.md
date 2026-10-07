# Birken 2027 – duellen

En enkel side på én lang side med historien, utfordrerne, veddemålet og en avstemning.

## Filer
- `index.html` – hele nettsiden (tekst, stil og kode)
- `setup.sql` – oppretter tabellen for stemmene i Supabase
- `images/` – legg bildene deres her

## 1. Tilpass innholdet
Åpne `index.html`:
- **Navn, dato og database:** Se `CONFIG` nederst i fila (`nameA`, `nameB`, `raceStart`, `supabaseUrl`, `supabaseKey`). Navnene fylles inn automatisk overalt på siden.
- **Tekst:** Søk etter seksjonene `HISTORIEN`, `UTFORDRERNE` og `VEDDEMÅLET` og skriv om tekstene.
- **Statistikk:** I hver løperboks endrer du både tallet (`8/10`) og bredden (`width:80%`).

## 2. Bilder
Legg disse i `images/` (JPG, gjerne under 500 KB hver):
| Fil | Brukes til |
|---|---|
| `images/hero.jpg` | Bakgrunnsbilde øverst (liggende format) |
| `images/lop-a.jpg` | Bilde av løper A (4:3) |
| `images/lop-b.jpg` | Bilde av løper B (4:3) |

Mangler et bilde, viser siden en farget boks i stedet.

### Bildekollasj for hver løper
Hver løper har sin egen seksjon med historie, faktabokser og en bildekollasj.
- Legg bildene i `images/a/` (løper A) og `images/b/` (løper B).
- Skriv dem inn i listene `galleryA` og `galleryB` nederst i `index.html`, én linje per bilde:
  `{ src: "images/a/7.jpg", caption: "Bildetekst", size: "wide" },`
- `size` styrer størrelsen i kollasjen: `""` (vanlig), `"wide"` (bred), `"tall"` (høy) eller `"big"` (stor).
- Klikk på et bilde for å se det i stort format og bla med piltastene.
- Bilder som mangler, vises som en stiplet boks med filnavnet, så du ser hva som gjenstår.

Vil du ha bilder i tidslinjen, legger du til
`<img src="images/navn.jpg" alt="beskrivelse">` inne i et `event`-element.

## 3. Database for stemmer (Supabase, gratis)
Uten dette kjører siden i **demomodus**, og stemmene lagres bare i din egen nettleser.
1. Opprett en konto på https://supabase.com og lag et nytt prosjekt.
2. Gå til **SQL Editor**, lim inn innholdet fra `setup.sql` og trykk **Run**.
3. Gå til **Project Settings → API** og kopier **Project URL** og **anon public**-nøkkelen.
4. Lim dem inn i `supabaseUrl` og `supabaseKey` i `index.html`.

Anon-nøkkelen kan trygt ligge i koden fordi tabellen er låst. Besøkende kan bare lese og legge til stemmer.
Vil du slette eller endre en stemme, gjør du det selv i **Table Editor** i Supabase.

## 4. Publiser på GitHub Pages
1. Lag et nytt **offentlig** repo på GitHub, for eksempel `birken-2027`.
2. Last opp alle filene: **Add file → Upload files**, og ta med mappa `images`.
3. Gå til **Settings → Pages**, velg **Branch: main** og mappa **/(root)**, og trykk **Save**.
4. Etter et par minutter er siden ute på `https://<brukernavn>.github.io/birken-2027/`.
