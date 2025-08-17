#!/bin/bash
#Author Name : Karnveer Singh
#Author Email : karnveer.singh@outlook.com

GREEN="\033[0;32m"
RED="\033[0;31m"
NC="\033[0m"
DOCKER_IMAGE="karnveer4/matter_iot:v1.0"

# Check if docker command exists
check_docker_framework()
{
if command -v docker > /dev/null
then
	echo -e "${GREEN} ✅ Docker is installed.${NC}"
	#what is the version
	docker --version
else
	echo "${RED}❌ Docker is NOT installed.${NC}"
	echo "You can install Docker by running:"
	echo "   curl -fsSL https://get.docker.com | sh"
	exit 0
fi
}

build_image()
{
	if docker image inspect "$DOCKER_IMAGE" > /dev/null 2>&1; then
		echo -e "${GREEN}✅ Docker image '$DOCKER_IMAGE' is already built successfully.${NC}"
	else
		echo -e "${RED}❌ Docker image '$DOCKER_IMAGE' not found. Build might have failed.${NC}"
		echo "building docker image..."
		docker build .
	fi
}

start_container()
{
	echo -e "${GREEN} spawning container ...✅${NC}"
	docker run -it --rm --network host "$DOCKER_IMAGE" bash
}

main()
{
	check_docker_framework
	build_image
	start_container
}

main
