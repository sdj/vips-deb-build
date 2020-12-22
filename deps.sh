#!/bin/bash

apt install $(grep -v "^$" debs.txt)
