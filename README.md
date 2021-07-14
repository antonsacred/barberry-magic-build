# barberry-magic-build
Tools for building magic files for content type recognition

# Reason

Different versions of PHP has different `libmagic` library included. This utility package need to prepare compiled `magic.mime.mgc` definitions files for each of PHP versions supported by https://github.com/Magomogo/Barberry.

Tests for different files mime type detection are located at https://github.com/Magomogo/barberry-interfaces

# Usage

Run `./compile-magic-file.sh {libmagic dir name}` to build `magic.mime.mgc` file. Packages `libtool`, `autotools-dev`, `automake` are required.

Execute `./test/run.sh`. If everything goes right test should output no files having "application/octet-stream" content type. It means every test file was recognized. 

# Breadcrumbs

1. To see what version of `libmagic` PHP depends on:

https://github.com/php/php-src/blob/master/ext/fileinfo/libmagic/magic.h

(see `MAGIC_VERSION` constant)

2. To get a particular libmagic version use this mirror:

https://github.com/file/file
