# Python-faker

python faker container

## usage

```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghrc.ic/ncukondo/pandoc-latex-ja [options]
```


### examples
Output Japanese html.
```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghrc.ic/ncukondo/pandoc-latex-ja sample.md -o sample.html
```

Output Japanese pdf.
```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghrc.ic/ncukondo/pandoc-latex-ja sample.md -o sample.pdf -V classoption="pandoc" -V documentclass=bxjsarticle --pdf-engine=xelatex --filter=pandoc-crossref
```

Enter the shell.
```bash
docker run --rm -it --volume "$(pwd):/data" --user $(id -u):$(id -g) --entrypoint sh ghrc.ic/ncukondo/pandoc-latex-ja 
```
