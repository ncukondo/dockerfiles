

login:
	eval `cat .env | grep -v ^\# | sed -e 's/\s*=\s*/=/g'`
	echo $GHCR_TOKEN | docker login ghcr.io -u $USERNAME --password-stdin
