# 🧟 Zombie Assault 3D

A 3D round-based survival game developed in **Unity** and **C#** for the **Game Programming** course. Inspired by the classic wave-based gameplay of *Call of Duty: Black Ops*, the game features an integrated **genetic algorithm** that evolves enemy attributes round by round.

---

## 🎮 Key Features

- **Player Mechanics:**
  - First-person controller (FPS).
  - Weapon switching system (Double-barrel Shotgun & PPSh-41).
  - Raycast shooting mechanics, reload animations, and impact visual effects.
  - Health bar system with time-based automatic health regeneration.

- **AI & Genetic Algorithm:**
  - Zombie AI behaviors (Patrolling, Chasing, and Attacking) built using **NavMesh Surface**.
  - **Genetic Algorithm:** Evaluates dead zombies at the end of each round (tracking survival time and minimum proximity to the player) to dynamically adapt zombie health and strength (`health` and `strong`) for subsequent waves.

- **UI & HUD System:**
  - Real-time top-down mini-map / radar using *Render Texture* and *Canvas UI*.
  - Live HUD displays for ammo counts, remaining enemies, and current round number.
  - Persistent high-score leaderboard managed via `PlayerPrefs`.

- **Menus & Audiovisual Integration:**
  - 3D interactive main menu scene.
  - Dynamic brightness adjustments powered by **Post Process Layer**.
  - Master audio volume controls saved to local settings.

---

## 🛠️ Tech Stack

- **Engine:** Unity (3D)
- **Language:** C#
- **Navigation:** Unity NavMesh Surface
- **Post-Processing:** Unity Post Processing Stack (`PostProcessLayer`)
- **Data Persistence:** `PlayerPrefs`

---

## 👥 Authors

- **Juan Jiménez Serrano**
- **Luis Miguel Pérez Martín**

*University of Huelva (UHU)*
