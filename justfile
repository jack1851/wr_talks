# wr_talks/justfile

# Default: run `build` when you just type `just`
default := "build"

# 1. Scaffold a new talk directory
# Usage: just new 20250801_myTalk
new name:
    @echo "🆕  Creating talk ‘{{name}}’…"
    mkdir -p {{name}}
    cp slides.tex preamble.tex cms_logo.png goldy_leaning.png justfile {{name}}/
    cp -r figures tables {{name}}/
    @echo "✅  Done. cd {{name}} && just build"

# 2. Build slides.tex → out/slides.pdf
build:
    latexmk -pdf -shell-escape -bibtex -outdir=out slides.tex

# 3. Watch mode: rebuild on every save
watch:
    latexmk -pdf -shell-escape -bibtex -pvc -outdir=out slides.tex

# 4. Clean up all aux files & PDFs
clean:
    latexmk -c -outdir=out
    rm -f out/*.pdf

# 5. Open the generated PDF (macOS `open`)
view:
    open out/slides.pdf

# 6. Present slides with pympress
present:
    pympress out/slides.pdf
