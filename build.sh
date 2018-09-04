#!/bin/bash

set -e

# docker login -u klotzandrew

build() {
	f=$1
	image_path=${f%Dockerfile}
	image=${image_path%%\/*}

	repo=klotzandrew
	tag=latest

	build_slug="$repo/$image:$tag"

	echo "Building start: $build_slug"
	docker build --rm --force-rm -t "$build_slug" "$image_path"
	docker push "$build_slug"

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
