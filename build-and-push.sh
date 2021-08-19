#! /bin/sh

DOCKERFILES=$(ls Dockerfile*)

for DOCKERFILE in $DOCKERFILES
do
	VERSION=$(echo $DOCKERFILE | sed -e "s/^Dockerfile-//")
	
	echo "Build $VERSION."
	docker build --no-cache -t cobytes/ci-build-wordpress:$VERSION -f $DOCKERFILE .	

	echo "Push $VERSION."
	docker push cobytes/ci-build-wordpress:$VERSION

done
