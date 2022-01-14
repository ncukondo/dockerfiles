 #!/usr/bin/env bash
set -Ceuo pipefail

#usage $ bash run.sh [paramaters...]
 

dir_name=$(cd $(dirname $0) && basename `pwd`)
name=$dir_name

docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) $dir_name $@