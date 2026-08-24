# Daw-Practica-3

> University coursework project (DAW — Web Application Development)
> Author: **Juan Jiménez Serrano**

A CSS-styled follow-up to [Daw-Practica-2](https://github.com/jujise96/Daw-Practica-2): the same **"SecondChance"** second-hand marketplace mockup, now with a shared stylesheet applying visual design, hover interactions and form-validation styling on top of the same page structure (home, categories, articles, sign-up form).

## Pages

| File | Description |
|---|---|
| `Recursos/Practica3.html` | Home page — styled header, horizontal nav bar and an (empty) content section. |
| `Recursos/Categorias.html` | Category list styled as Roman-numeral list items (`I.`, `II.`, ...); hovering over a category reveals its hidden subcategory list via `:hover` + `display: none/block`. |
| `Recursos/Articulos.html` | Product table with alternating row colors (`.filas-pares` / `.filas-impares`). |
| `Recursos/Formulario.html` | Sign-up form using real input types (`email`, `password`, `number`) and `required` fields, with `.requerido`/`.opcional` classes (red/green borders) and `input:valid`/`input:invalid` styling for live visual feedback. |
| `Recursos/Practica3Template.html` | An alternate "Publicar" (post an ad) page template — its navigation links point to `./Inicio.html/`, `./Categorias.html/`, etc., which don't match the other pages' filenames/paths, so they are currently broken. |

All pages share `public_html/ccs/estilos.css` (note the folder is named `ccs`, not `css`) for styling: a dark header/footer, an inline nav menu, table borders and zebra striping, the category hover-reveal effect, and the form validation styling described above.

## Tech Stack

| Layer | Technology |
|---|---|
| Markup | HTML5 (semantic tags: `header`, `nav`, `section`, `footer`) |
| Styling | CSS3 (Flexbox for the form layout, `:hover`/`:valid`/`:invalid` pseudo-classes, CSS counters for Roman numerals) |
| Project scaffolding | Apache NetBeans HTML5/JS client-side project, with Bower/Grunt/Gulp config files (present but unused — no dependencies or tasks defined) |

## Project Structure

```
Daw-Practica-3/
├── public_html/
│   ├── ccs/
│   │   └── estilos.css
│   └── Recursos/
│       ├── Practica3.html
│       ├── Practica3Template.html
│       ├── Categorias.html
│       ├── Articulos.html
│       └── Formulario.html
├── nbproject/              # NetBeans project metadata
└── package.json / bower.json / Gruntfile.js / gulpfile.js  # Unused scaffolding
```

## Prerequisites

- Any modern web browser — these are static HTML/CSS pages with no server-side logic.
- **Apache NetBeans** (optional, but the project is set up as a NetBeans HTML5/JS client-side project).

## Installation Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/jujise96/Daw-Practica-3.git
   cd Daw-Practica-3
   ```

2. **Open the pages directly in a browser**, or serve the `public_html/` folder with any static file server, e.g.:
   ```bash
   cd public_html
   python -m http.server 8000
   ```
   then visit `http://localhost:8000/Recursos/Practica3.html`.

3. **From NetBeans:** open the project and press *Run* to launch it in the configured browser.

## Author

**Juan Jiménez Serrano**.
