# Python-faker

python faker container

## usage

```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/pandoc-latex-ja [options]
```


### examples
Output Japanese html.
```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/pandoc-latex-ja sample.md -o sample.html
```

Output Japanese pdf.
```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/pandoc-latex-ja -V classoption="pandoc" -V documentclass=bxjsarticle --pdf-engine=xelatex --filter=pandoc-crossref sample.md -o sample.pdf
```

Enter the shell.
```bash
docker run --rm -it --volume "$(pwd):/data" --user $(id -u):$(id -g) --entrypoint sh ghcr.io/ncukondo/pandoc-latex-ja 
```
