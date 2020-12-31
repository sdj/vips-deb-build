#!/bin/bash

pushd build

VIPS_VERSION="8.10.5"
VIPS="vips-8.10.5"

VIPS_DEB_VERSION="${VIPS_VERSION}-1"
VIPS_DEB="vips_${VIPS_DEB_VERSION}"


if [[ -d "${VIPS}" ]]; then
	echo "dir already exists: ${VIPS}"
else
	tar xf "${VIPS}.tar.gz"
fi

pushd "${VIPS}"

if [[ -d debian ]]; then
	echo "dir already exists: debian"
else
	tar xf "../${VIPS_DEB}.debian.tar.xz"
fi

## use if version needs to change

# if [[ -z "$EMAIL" || -z "$NAME" ]]; then
# 	echo "Requires environment variable EMAIL and NAME set"
# 	exit 1
# fi
# 
# dch -v "8.10.5-1" "Updating to 8.10.5"

mk-build-deps

popd

popd

