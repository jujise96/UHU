# PH_P6 — Diphone-Concatenation Speech Synthesizer

> Assignment 6 for the course **Speech Processing, Vision and Multimodal Interaction (PHVIM)**
> Authors: **Juan Jiménez Serrano** and **Alejandro Pérez Domínguez**

A Python script that synthesizes speech from a text string written in a reduced phonetic alphabet, by concatenating pre-recorded **diphones** (audio fragments capturing the transition between two sounds) with a short crossfade between them. If the input phrase ends in `?`, the resulting audio is post-processed to sound like a question by shifting the pitch across different sections of the utterance.

## How it works

1. **Input validation** (`checkstring`): checks that the phrase only contains the allowed characters (`a`, `A`, `b`, `f`, `l`, `m`, `s`, `t`, `?`), that it doesn't start with `m`, that `m` is never invalidly followed by `s`, that it ends with a valid character (`?`, `a`, `s` or `A`), and that it follows the expected syllabic structure of the language defined for this assignment.
2. **Diphonization** (`diafonizacion`): converts the validated string into a list of diphones, adding a special starting diphone (`-` + first character) and a special ending diphone (last character + `-`), and marking diphones containing an `A` (stressed vowel) with the `_acentuado` suffix.
3. **Audio synthesis** (`crearaudios`): looks up each diphone as a `.wav` file inside the `Difonos/` folder and concatenates them with `pydub`, applying a 13 ms crossfade between consecutive fragments to smooth the transitions.
4. **Question intonation** (`transformar_a_pregunta`): if the original phrase ended in `?`, the final audio is split into three sections and a progressive pitch shift is applied with `librosa` (a slight drop at the start, a slight rise in the middle, and a stronger rise at the end), mimicking the intonation of a question.

## Repository Structure

```
PH_P6/
├── tts.py                 # Main script (validation, diphonization, synthesis and intonation)
├── Difonos/                # Library of 41 pre-recorded diphones in .wav format
├── salida.wav              # Example generated audio
└── Documentación/
    ├── Memoria_PHVIM - P6.pdf         # Assignment report
    ├── Practica6_puntuable 24-25.pdf  # Assignment brief
    └── PPT_PHVIM _P6.pdf              # Presentation slides
```

## Prerequisites

- **Python 3**
- Libraries: `pydub`, `librosa`, `numpy`, `soundfile`
- **ffmpeg** installed and available on your `PATH` (recommended for `pydub` to work reliably)

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/jujise96/PH_P6.git
   cd PH_P6
   ```
2. Install the dependencies:
   ```bash
   pip install pydub librosa numpy soundfile
   ```

## Usage

```bash
python tts.py "<phrase>" <output_file.wav>
```

Example:

```bash
python tts.py "afalama" salida.wav
```

If the phrase ends in `?`, e.g. `"asas?"`, the script will additionally apply the question intonation to the output audio.

### Input Alphabet Rules

- Allowed characters: `a`, `A`, `b`, `f`, `l`, `m`, `s`, `t`, and optionally a trailing `?`.
- The string cannot start with `m`.
- The string must end with `?`, `a`, `s` or `A`.
- The structure follows the syllabic pattern defined for the assignment's language (optional vowel + consonant or consonant cluster `bl`/`fl`/`tl` + vowel, repeatable, with an optional trailing `s` in each group).

If the phrase doesn't satisfy these rules, `tts.py` prints a message to the console stating the string is invalid and does not generate any audio.

## Documentation

The [`Documentación`](./Documentaci%C3%B3n) folder includes:

- The assignment **report**, covering the diphone planning, the carrier words used to record them, and an explanation of the development process.
- The original **assignment brief**.
- The **presentation** slides for the assignment.

## Authors

**Juan Jiménez Serrano** and **Alejandro Pérez Domínguez**.
