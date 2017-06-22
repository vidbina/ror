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
	${DOCKER} run --rm -it ${IMAGE} /bin/bash
