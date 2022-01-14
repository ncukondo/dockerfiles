# Python-faker

python faker container

## usage

```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghrc.ic/ncukondo/python-faker [commands]
```


### examples
Run faker command directly.
```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghrc.ic/ncukondo/python-faker faker name
```

Run python file using faker.
```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghrc.ic/ncukondo/python-faker python app.py
```


For more usage about faker see [Faker documentation](https://faker.readthedocs.io/en/master/).