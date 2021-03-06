# Pandoc Latex Ja

Pandoc Latex Ja container

## usage

```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/pandoc-lualatex-ja pandoc [options]
```


### examples
Output html.
```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/pandoc-lualatex-ja pandoc sample.md -o sample.html
```

Output Japanese pdf.
```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/pandoc-lualatex-ja pandoc -V documentclass=ltjsarticle --pdf-engine=lualatex --filter=pandoc-crossref  --citeproc --bibliography=citations.bib  --csl=vancouver ./sample_source/sample.md -o ./dist/sample.pdf

docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/pandoc-lualatex-ja pandoc -V documentclass=ltjsarticle --pdf-engine=lualatex --filter=pandoc-crossref  --citeproc --bibliography=citations.bib  --csl=vancouver ./sample_source/citations.md -o ./dist/citations.pdf

```

Enter the shell.
```bash
docker run --rm -it --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/pandoc-lualatex-ja sh
```
Use lualatex.
```bash
docker run --rm -it --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/pandoc-lualatex-ja lualatex --output-directory=dist sample.tex
```

