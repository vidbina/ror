SUDO=sudo
CHOWN=chown
DOCKER=docker
IMAGE="vidbina/ror:alpha"

reown:
	${SUDO} ${CHOWN} ${USER}: -R .

image:
	${DOCKER} build . \
		-t ${IMAGE}

shell:
	${DOCKER} run --rm -it -v "${PWD}:/src" -w /src ${IMAGE} /bin/bash
