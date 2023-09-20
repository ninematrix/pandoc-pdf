# pandoc-pdf

Pandoc-PDF is a dockerfile for Pandoc ,with [noto cjk fonts](https://github.com/notofonts/noto-cjk) and [Eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template) template inside.

## How to use

### Build from Dockerfile

1. Download noto cjk fonts from it's github repository [releases](https://github.com/googlefonts/noto-cjk/releases). Unzip to noto folder.
2. Download the newest [Eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template) template and put eisvogel.latex to current folder.
3. Docker build.

### Run with ninematrix/pandoc-pdf image

- Use Docker

```shell
docker run --rm -v $PWD:/data ninematrix/pandoc-pdf -s --pdf-engine=xelatex  -V CJKmainfont="Noto Serif CJK SC" --template eisvogel --highlight-style espresso --resource-path /data in.md -o out.pdf
```

- Use Alias

```shell
alias pandoc-pdf="docker run --rm -v $PWD:/data ninematrix/pandoc-pdf  -s --pdf-engine=xelatex  -V CJKmainfont='Noto Serif CJK SC' --template eisvogel --highlight-style espresso --resource-path /data"
pandoc-pdf in.md -o out.pdf
```
