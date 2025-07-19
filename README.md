# WR Talks

A lightweight, template-driven LaTeX slides repository for your W\_R presentations.

## Repository Structure

```
wr_talks/
├── slides.tex            ← Your master slide template
├── preamble.tex          ← Shared LaTeX preamble definitions
├── figures/              ← Graphics (PNG, PDF, etc.)
├── tables/               ← Table data or .tex snippets
├── cms_logo.png          ← Example logo asset
├── goldy_leaning.png     ← Example image asset
├── justfile              ← Task runner for building and scaffolding
├── README.md             ← This file
└── <YYYYMMDD_talk>/      ← Individual talk folders (created via `just new`)
```

## Prerequisites

* **just** ([https://github.com/casey/just](https://github.com/casey/just))
* **TeX Live** (or any TeX distribution with `latexmk`)
* **Python 3** & `pip` (for `pympress`)

Optional (for on‐machine presentation):

```bash
pip install --user pympress
```

## Quickstart

### 1. Build the template slides

From the root of the repo:

```bash
just build
just view    # opens out/slides.pdf
```

### 2. Scaffold a new talk

Use the `new` recipe to copy templates into a fresh folder:

```bash
just new 20250722_alpana_intro
cd 20250722_alpana_intro
just build
just view
```

### 3. Live‐reload while editing

```bash
just watch   # rebuilds on every save
```

### 4. Clean up build artifacts

```bash
just clean   # removes out/ and aux files
```

### 5. Present with pympress

Inside any talk folder:

```bash
just init-present   # creates venv/ + installs pympress
just present        # launches pympress out/slides.pdf
```

## Contributing

1. Fork the repo and create a feature branch.
2. Make your changes (scripts, templates, figures).
3. Submit a pull request with a clear description.

## License

Distributed under the MIT License. See [LICENSE](LICENSE) for details.
