#/bin/bash

set -euo pipefail

pushd "build"

pushd "vips-8.10.5"

debuild -i -us -uc -b -j$(nproc)

popd

popd

