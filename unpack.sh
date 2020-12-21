#!/bin/bash

pushd build

VIPS="vips-8.10.5"

if [[ -d $VIPS ]]; then
	echo "dir already exists: $VIPS"
else
	tar xf $VIPS.tar.gz
fi

pushd vips-8.10.5

if [[ -d debian ]]; then
	echo "dir already exists: debian"
else
	tar xf ../vips_8.10.2-1.debian.tar.xz
fi

if [[ -z "$EMAIL" || -z "$NAME" ]]; then
	echo "Requires environment variable EMAIL and NAME set"
	exit 1
fi

dch -v "8.10.5-1" "Updating to 8.10.5"

mk-build-deps

popd

popd

