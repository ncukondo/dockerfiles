# Python-faker

python faker container

## usage

```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/python-science-ja [commands]
```


### examples
Run python file directly.
```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/python-science-ja python app.py
```

Enter the shell.
```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/ncukondo/python-science-ja bash
```
