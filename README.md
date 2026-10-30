# Annexolotl

<p align="center">
  <img src="annexolotl-logo.svg" width="96" height="96" alt="Annexolotl Logo" />
</p>

**Annexolotl** is a zero-dependency, 100% offline single-file HTML/JS utility (`annexolotl.html`) that generates a monochrome **A4 PDF title page** for academic or work evidence and losslessly prepends it to your original evidence PDF.

Built for fast thesis/master's annex compilation and project documentation workflows—no Python, Node.js, or cloud upload required.

---

## Features

- **Lossless PDF Merging (`pdf-lib`)**: Constructs a true vector PDF title page (`595.28 × 841.89 pt` A4 portrait) and copies original pages directly from your source PDF (`PDFDocument.copyPages()`) byte-for-byte without rasterizing, re-encoding, or altering your original file.
- **Monochrome Academic Layout**:
  - **Main Title**: Pure black (`rgb(0, 0, 0)`), centered `Helvetica-Bold` (Arial metric equivalent, supporting Western European / German characters `ä, ö, ü, ß`), with automatic multi-line wrapping and vertical bounds protection.
  - **Byline**: Subtle horizontal rule + gray (`rgb(0.4, 0.4, 0.4)`) filename sub-line (`12pt`).
  - **Footer**: Centered `11pt` gray timestamp (`Annexolotl • YYYY-MM-DD HH:MM`) at the bottom margin.
- **Fast 3-Step Batch Workflow**:
  1. **Drop or Browse**: Dragging an evidence PDF onto the dropzone auto-populates the **Byline** (`evidence_project_etc.pdf`) and **Output Filename** (`evidence_project_etc_titled.pdf`) and immediately focuses the Title input.
  2. **Type Label & Press `Enter`**: Mandatory title validation ensures no blank cover sheets are exported; pressing `Enter` immediately builds and downloads the merged PDF (`Shift+Enter` inserts a line break).
  3. **Session Title History (`sessionStorage`)**: Previously used titles in the current session appear as clickable chips directly beneath the Title box—click any chip to copy it into the input and place your cursor at the end for quick numbering/tweaking.
- **Dark Mode UI + Crisp White A4 Live Preview**: Dark workspace on the left, live proportional white A4 paper preview on the right.
- **Zero-Bloat Standalone Desktop Mode (`Annexolotl.bat`)**: Double-click `Annexolotl.bat` on Windows to open `annexolotl.html` in a chromeless standalone desktop window (`--app` mode via Edge/Chrome) with the custom Annexolotl window/taskbar icon.

---

## Quick Start

### Option A: Standalone Desktop App Window (Windows)
Double-click **`Annexolotl.bat`**. It launches `annexolotl.html` in a dedicated `1040×760` desktop window without browser tabs or an address bar.

### Option B: Any Browser (Windows, macOS, Linux)
Open **`annexolotl.html`** directly in any modern browser. Everything—including `pdf-lib v1.17.1` and icons—is embedded inside that single HTML file, so you can copy `annexolotl.html` to any computer or USB drive and use it completely offline.

---

## Repository Contents

| File | Description |
| :--- | :--- |
| `annexolotl.html` | Self-contained offline application (HTML + CSS + inline `pdf-lib` + base64 icons) |
| `Annexolotl.bat` | Windows standalone `--app` window launcher (Edge / Chrome) |
| `favicon.ico` / `annexolotl.ico` | Multi-resolution (`16×16`, `32×32`, `64×64`) icon files for browsers & Windows shortcuts |
| `annexolotl-logo.svg` | Vector monochrome Annexolotl mascot logo |
| `LICENSE` | MIT License (plus bundled `pdf-lib` MIT attribution) |

---

## License

Released under the [MIT License](LICENSE). Includes inline [`pdf-lib`](https://github.com/Hopding/pdf-lib) (`v1.17.1`, MIT License).
