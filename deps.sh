#!/bin/bash

set -euo pipfail

apt install $(grep -v "^$" debs.txt)
