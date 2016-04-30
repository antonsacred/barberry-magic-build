#!/usr/bin/env bash
autoreconf -f -i &&
./configure --disable-silent-rules &&
make -j4 &&
make -C tests check
