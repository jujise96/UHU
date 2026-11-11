# DAW-Practica-1

> University coursework project (DAW — Web Application Development)
> Author: **Juan Jiménez Serrano**

A minimal introductory web exercise: an HTML form that collects a name, validates it client-side with JavaScript, and submits it to a JSP page that greets the user by name.

## What it does

1. `index.html` shows a form with a single **Name** text field.
2. On submit, `js/funciones.js` (`validar`) checks the field isn't empty — if it is, it shows an alert and blocks the submission.
3. If valid, the form posts to `saludo.jsp`, which reads the `nombre` request parameter and renders `Hello <name>`, with a link back to the form.
4. `css/estilos.css` applies simple styling (border, background and text color) to the form.

## Tech Stack

| Layer | Technology |
|---|---|
| Frontend | HTML5, CSS3, vanilla JavaScript |
| Backend | JSP (Jakarta/Java Server Pages) |
| Project scaffolding | Apache NetBeans HTML5/JS client-side project, with Bower/Grunt/Gulp config files (present but unused — no dependencies or tasks defined) |

## Project Structure

```
DAW-Practica-1/
├── public_html/
│   ├── index.html         # Form page
│   ├── saludo.jsp         # Greets the submitted name
│   ├── css/estilos.css
│   └── js/funciones.js    # Client-side validation
├── nbproject/              # NetBeans project metadata
├── package.json / bower.json / Gruntfile.js / gulpfile.js  # Unused scaffolding
```

## Prerequisites

- A **Java Servlet/JSP container**, such as **Apache Tomcat**, to serve `saludo.jsp` (a plain static file server won't execute the JSP)
- **Apache NetBeans** (optional, but the project is set up as a NetBeans HTML5/JS client-side project)

## Installation Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/jujise96/DAW-Practica-1.git
   cd DAW-Practica-1
   ```

2. **Deploy to a servlet container:**
   - From NetBeans: open the project, set your target server (e.g. Tomcat) under project properties, and press *Run*.
   - Manually: copy the contents of `public_html/` into your Tomcat `webapps/<app-name>/` folder (or package it as a `.war`), then start Tomcat.

3. **Open the app** in your browser, e.g.:
   ```
   http://localhost:8080/<app-name>/index.html
   ```
   Enter a name and submit — you'll be redirected to `saludo.jsp`, which greets you by name.

## Author

**Juan Jiménez Serrano**.
