#!/bin/bash

set -e

docker login -u klotzandrew -p "$DOCKER_SECRET_KEY"

build() {
	f=$1
	image_path=${f%Dockerfile}
	image=${image_path%%\/*}

	repo=klotzandrew
	tag=latest

	sha=$(git rev-parse --short HEAD)

	build_slug="$repo/$image:$tag"
	sha_slug="$repo/$image:$sha"

	echo "Building start: $build_slug"
	docker build --rm --force-rm -t "$build_slug" -t "$sha_slug" "$image_path"
	docker push "$build_slug"
	docker push "$sha_slug"

	echo "====="
	echo "Building done: $build_slug"
	echo "====="
}

containers=$1
if [ -z "$containers" ]; then
	containers=. # build all
fi

files=$(find . -name 'Dockerfile' -type f | sed 's|./||' | sort | grep $containers)

for f in $files; do
	build "$f"
done
