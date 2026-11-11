# Daw-Practica-4

> University coursework project (DAW — Web Application Development)
> Author: **Juan Jiménez Serrano**

A JavaScript-powered follow-up to [Daw-Practica-3](https://github.com/jujise96/Daw-Practica-3): the same **"SecondChance"** second-hand marketplace mockup, now with dynamic behaviour added via vanilla JavaScript — a JS-built navigation menu, interactive price cells, a postal-code-to-province autofill, and custom client-side form validation.

## What's new (JavaScript features)

All implemented in `public_html/JS/Funcionalidades.js`, loaded on every page:

- **Dynamic navigation menu:** the `<ul class="menuPrincipal">` in each page is empty in the HTML — `construirMenu()` builds the four menu links (Inicio, Categorías, Artículos, Formulario) from a JS array on `DOMContentLoaded`.
- **Interactive price cells (`Articulos.html`):** clicking a price cell cycles its row through style states (`precio-rojo` → `precio-azul` → default) by toggling CSS classes.
- **Postal-code-to-province autofill (`Formulario.html`):** on changing the postal code field, the script maps its first two digits to a Spanish province and dynamically rebuilds/selects the corresponding option in the province `<select>`.
- **Custom form validation (`Formulario.html`):** on submit, checks the password is at least 6 characters and contains a digit, checks both password fields match, and checks every field with the `.requerido` class is filled — blocking submission and inserting inline error messages next to the offending fields if not.

## Pages

| File | Description |
|---|---|
| `Recursos/Practica4.html` | Home page — empty content section, menu built by JS. |
| `Recursos/Categorias.html` | Category list (Roman-numeral styling, hover-reveal subcategories, from Practica-3). |
| `Recursos/Articulos.html` | Product table with alternating row colors, plus the interactive price-cell click behaviour described above. |
| `Recursos/Formulario.html` | Sign-up form with `.requerido`/`.opcional` styling, `input:valid`/`invalid` feedback, the postal-code province autofill, and the custom submit-time validation. |

## Tech Stack

| Layer | Technology |
|---|---|
| Markup | HTML5 (semantic tags: `header`, `nav`, `section`, `footer`) |
| Styling | CSS3 (Flexbox, `:hover`/`:valid`/`:invalid` pseudo-classes, CSS counters) |
| Behaviour | Vanilla JavaScript (DOM manipulation, event listeners, form validation) |
| Project scaffolding | Apache NetBeans HTML5/JS client-side project, with Bower/Grunt/Gulp config files (present but unused — no dependencies or tasks defined) |

## Project Structure

```
Daw-Practica-4/
├── public_html/
│   ├── ccs/
│   │   └── estilos.css
│   ├── JS/
│   │   └── Funcionalidades.js
│   └── Recursos/
│       ├── Practica4.html
│       ├── Categorias.html
│       ├── Articulos.html
│       └── Formulario.html
├── nbproject/              # NetBeans project metadata
└── package.json / bower.json / Gruntfile.js / gulpfile.js  # Unused scaffolding
```

## Prerequisites

- Any modern web browser — these are static HTML/CSS/JS pages with no server-side logic.
- **Apache NetBeans** (optional, but the project is set up as a NetBeans HTML5/JS client-side project).

## Installation Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/jujise96/Daw-Practica-4.git
   cd Daw-Practica-4
   ```

2. **Open the pages directly in a browser**, or serve the `public_html/` folder with any static file server, e.g.:
   ```bash
   cd public_html
   python -m http.server 8000
   ```
   then visit `http://localhost:8000/Recursos/Practica4.html`.

3. **From NetBeans:** open the project and press *Run* to launch it in the configured browser.

## Author

**Juan Jiménez Serrano**.
