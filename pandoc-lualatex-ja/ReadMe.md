# Pandoc Latex Ja

Pandoc Latex Ja container

## usage

```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/pandoc-lualatex-ja [options]
```


### examples
Output html.
```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/pandoc-lualatex-ja sample.md -o sample.html
```

Output Japanese pdf.
```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/pandoc-lualatex-ja -V documentclass=ltjsarticle --pdf-engine=lualatex --filter=pandoc-crossref sample.md -o sample.pdf
```

Enter the shell.
```bash
docker run --rm -it --volume "$(pwd):/data" --user $(id -u):$(id -g) --entrypoint sh ghcr.io/ncukondo/pandoc-lualatex-ja 
```
