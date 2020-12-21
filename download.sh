#!/bin/bash

mkdir -p build
pushd build

grep -v '^$' ../urls.txt | xargs -I{} -n 1 wget {}

popd

