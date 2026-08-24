# DDSI-Proyecto

> University coursework project (DDSI) — Java desktop application
> Author: **Juan Jiménez Serrano**

**DDSI-Proyecto** is a Java Swing desktop application for managing a club/gym-style organization: its **members (Socios)**, its **instructors (Monitores)** and the **activities (Actividades)** they run. It follows an MVC architecture and persists data through **Hibernate ORM**, with the ability to connect to either a **MariaDB** or an **Oracle** database at login time.

🇪🇸 A Spanish version of this document is available at [README.es.md](README.es.md).

## Features

- **Login screen** that lets the user pick which database engine to connect to (**MariaDB** or **Oracle**) before entering the application.
- **Member management (Socios):** register, update and list members (name, DNI, birth date, phone, email, join date, category).
- **Instructor management (Monitores):** register, update and list instructors, each of whom can be the responsible instructor for one or more activities.
- **Activity management (Actividades):** register, update and list activities (name, description, monthly base price), each with a responsible instructor and a many-to-many relationship with the members enrolled in it.
- **Custom dark theme** UI powered by FlatLaf (`FlatMacDarkLaf`).
- **Date pickers** provided by the `jcalendar` component library.

## Tech Stack

| Layer | Technology |
|---|---|
| Language | Java 20 |
| UI | Java Swing, NetBeans GUI forms (`.form`), FlatLaf (dark theme) |
| ORM | Hibernate Core 5.6 (JPA annotations via `javax.persistence`) |
| Databases | MariaDB (`mariadb-java-client`) and Oracle (`ojdbc11`) — selectable at login |
| Build tool | Maven |
| IDE | Apache NetBeans (the project ships NetBeans-specific `.form` files and `nbactions.xml`) |

## Project Structure

```
DDSI-Proyecto/
├── pom.xml
└── src/main/
    ├── java/
    │   ├── Aplicacion/      # Application entry point (DDSI_Proyecto.java)
    │   ├── Config/           # Hibernate session factory setup (MariaDB / Oracle)
    │   ├── Controlador/      # Controllers (Login, Principal, Socio, Monitores, Actividades)
    │   ├── Modelo/           # JPA entities and DAOs (Socio, Monitor, Actividad)
    │   └── Vista/            # Swing views (NetBeans .form + .java pairs)
    └── resources/
        ├── hibernateMariaDB.cfg.xml
        └── hibernateOracle.cfg.xml
```

## Prerequisites

- **JDK 20** (or a compatible newer version, matching `maven.compiler.source`/`target` in `pom.xml`)
- **Apache Maven**
- **Apache NetBeans** (recommended, since the `Vista` classes are paired with NetBeans `.form` GUI builder files)
- Access to a **MariaDB** and/or **Oracle** database instance

## Installation Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/jujise96/DDSI-Proyecto.git
   cd DDSI-Proyecto
   ```

2. **Configure the database connection(s):**
   The connection settings live in `src/main/resources/hibernateMariaDB.cfg.xml` and `src/main/resources/hibernateOracle.cfg.xml`. Fill in your own values for the placeholders (`*put_your_stringconecction*`, `*put_your_username*`, `*put_your_password*`) with your own database instance details.
   > ⚠️ These files are tracked in the repository, so avoid committing real credentials to version control — keep placeholders in the tracked file and set your real values in a local, gitignored copy instead.

3. **Create the schema:**
   Create the `SOCIO`, `MONITOR`, `ACTIVIDAD` and `REALIZA` (many-to-many) tables in your target database matching the JPA mappings in `src/main/java/Modelo/`, or let Hibernate generate them by adding an `hbm2ddl.auto` property to the relevant `.cfg.xml` file.

4. **Build and run the application:**
   - From NetBeans: open the project and press *Run*.
   - From the command line:
     ```bash
     mvn compile exec:java -Dexec.mainClass="Aplicacion.DDSI_Proyecto"
     ```

5. **Log in:** on startup, choose **MariaDB** or **Oracle** from the dropdown to connect to the corresponding database, then manage members, instructors and activities from the main window.

## Author

**Juan Jiménez Serrano**.
