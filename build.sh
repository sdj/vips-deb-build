#/bin/bash

pushd build

pushd vips-8.10.5

debuild -i -us -uc -b

popd

popd

