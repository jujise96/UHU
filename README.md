# Daw-Practica-2

> University coursework project (DAW — Web Application Development)
> Author: **Juan Jiménez Serrano**

A static HTML mockup for **"SecondChance"**, a fictional second-hand marketplace website (in the spirit of sites like Wallapop), built as a multi-page semantic HTML exercise: a homepage, a category tree, an article listing table, and a registration form.

## Pages

| File | Description |
|---|---|
| `Practica2.html` | Home page — header, navigation and an (empty) content section. |
| `Categorias.html` | Nested category list (Electrónica, Lectura, Juegos, Otros) with subcategories, using nested `<ul>` elements. |
| `Articulos.html` | Product listing rendered as an HTML `<table>`, with an image, name, category, price and a details link/placeholder for each item. |
| `Formulario.html` | A long registration/sign-up form covering email, password + confirmation, name, address, postal code, a Spanish-province `<select>`, a Facebook URL, a phone number (pattern-validated), category checkboxes and a "how did you hear about us" radio group. |
| `Practica2Template.html` | An alternate "Publicar" (post an ad) page template — note its navigation links point to `./Inicio.html/`, `./Categorias.html/`, etc., which don't match the other pages' filenames/paths, so they are currently broken. |

All pages share the same header/nav/footer structure, hardcoded per page (no shared include mechanism, no CSS or JS files — this is a pure HTML/structure exercise).

## Tech Stack

| Layer | Technology |
|---|---|
| Markup | HTML5 (semantic tags: `header`, `nav`, `section`, `footer`) |
| Project scaffolding | Apache NetBeans HTML5/JS client-side project, with Bower/Grunt/Gulp config files (present but unused — no dependencies or tasks defined) |

## Project Structure

```
Daw-Practica-2/
├── public_html/
│   ├── Practica2.html
│   ├── Practica2Template.html
│   ├── Categorias.html
│   ├── Articulos.html
│   └── Formulario.html
├── nbproject/              # NetBeans project metadata
└── package.json / bower.json / Gruntfile.js / gulpfile.js  # Unused scaffolding
```

## Prerequisites

- Any modern web browser — these are static HTML pages with no server-side logic.
- **Apache NetBeans** (optional, but the project is set up as a NetBeans HTML5/JS client-side project).

## Installation Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/jujise96/Daw-Practica-2.git
   cd Daw-Practica-2
   ```

2. **Open the pages directly in a browser**, or serve the `public_html/` folder with any static file server, e.g.:
   ```bash
   cd public_html
   python -m http.server 8000
   ```
   then visit `http://localhost:8000/Practica2.html`.

3. **From NetBeans:** open the project and press *Run* to launch it in the configured browser.

## Author

**Juan Jiménez Serrano**.
