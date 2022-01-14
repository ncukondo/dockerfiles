 #!/usr/bin/env bash
set -Ceuo pipefail

#usage $ bash run.sh [paramaters...]
 

dir_name=$(cd $(dirname $0) && basename `pwd`)
name=$dir_name

docker run -it  --rm   --volume "$(pwd):/data" $dir_name "$@"