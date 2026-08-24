# DDSI

> University coursework project (DDSI) — includes both an introductory JDBC exercise and a fuller Hibernate/Swing version
> Author: **Juan Jiménez Serrano**

This repository has two branches, corresponding to two stages of the same DDSI coursework:

- **`master`** — an early, console-based Java exercise using raw **JDBC** (no ORM). Connects to a database, prints its metadata, and lists members (Socios) through a text menu.
- **`Proyecto`** — a fuller Java Swing desktop application using **Hibernate ORM**, managing members (Socios), instructors (Monitores) and activities (Actividades), with a graphical login screen to pick between MariaDB and Oracle.

🇪🇸 A Spanish version of this document is available at [README.es.md](README.es.md).

## `master` branch — console JDBC exercise

1. On startup, opens a JDBC connection (Oracle or MariaDB, selected in code) and prints the database metadata to the console.
2. Shows a text menu:
   ```
   Que desea visualizar:
        1) Socios
        2) Monitores
        3) Actividades

        0) Salir
   ```
3. Only **1) Socios** is implemented — it queries the `SOCIO` table via `SocioDAO`. **Monitores** and **Actividades** are stubbed out.

**Structure:**
```
src/main/java/
├── Aplicacion/       # Entry points (Practica_01.java, Practica_02.java)
├── Controlador/      # ControladorLogin, ControladorPrincipal, ControladorSocio
├── Modelo/           # Conexion (raw JDBC connection), Socio, SocioDAO
└── Vista/            # Console output helpers (VistaInfoBD, VistaMensajes, VistaSocio)
```

## `Proyecto` branch — Hibernate/Swing application

A Java Swing desktop application for managing a club/gym-style organization, with full CRUD for members, instructors and activities, persisted through Hibernate ORM. See the sibling repository [DDSI-Proyecto](https://github.com/jujise96/DDSI-Proyecto) for the same application, and its README for full feature/architecture details — the `Proyecto` branch here mirrors that project.

**Structure:**
```
src/main/
├── java/
│   ├── Aplicacion/      # Entry point (DDSI_Proyecto.java)
│   ├── Config/           # Hibernate session factory setup (MariaDB / Oracle)
│   ├── Controlador/      # Controllers (Login, Principal, Socio, Monitores, Actividades)
│   ├── Modelo/           # JPA entities and DAOs (Socio, Monitor, Actividad)
│   └── Vista/            # Swing views
└── resources/
    ├── hibernateMariaDB.cfg.xml
    └── hibernateOracle.cfg.xml
```

## Tech Stack

| Layer | `master` | `Proyecto` |
|---|---|---|
| Language | Java 20 | Java 20 |
| Data access | Plain JDBC | Hibernate ORM 5.6 |
| UI | Console | Java Swing + FlatLaf dark theme |
| Databases | Oracle / MariaDB | Oracle / MariaDB (selectable at login) |
| Build tool | Maven | Maven |
| IDE | Apache NetBeans | Apache NetBeans |

## Prerequisites

- **JDK 20** (or a compatible newer version)
- **Apache Maven**
- Apache NetBeans (recommended for the `Proyecto` branch, which uses NetBeans `.form` GUI files)
- Access to an **Oracle** and/or **MariaDB** database instance

## Installation Steps

1. **Clone the repository and check out the branch you want:**
   ```bash
   git clone https://github.com/jujise96/DDSI.git
   cd DDSI
   git checkout master     # or: git checkout Proyecto
   ```

2. **Configure your database connection:**
   - On `master`: set your connection details inside `ControladorLogin.conectarBD()`, in `src/main/java/Controlador/ControladorLogin.java`.
   - On `Proyecto`: fill in your own values in `src/main/resources/hibernateMariaDB.cfg.xml` and `hibernateOracle.cfg.xml`.
   > ⚠️ Avoid committing real credentials to version control — use placeholders in the tracked files and keep your real values in a local, gitignored copy instead.

3. **Build and run:**
   - `master`:
     ```bash
     mvn compile exec:java -Dexec.mainClass="Aplicacion.Practica_02"
     ```
   - `Proyecto`:
     ```bash
     mvn compile exec:java -Dexec.mainClass="Aplicacion.DDSI_Proyecto"
     ```
   - Or open the checked-out branch in NetBeans and press *Run*.

## Author

**Juan Jiménez Serrano**.
