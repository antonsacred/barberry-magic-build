#!/usr/bin/env bash
autoreconf -f -i &&
./configure --disable-silent-rules --prefix=/zoo/github/barberry/magic-build/ &&
make -j4 &&
make install
