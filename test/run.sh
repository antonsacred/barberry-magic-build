#!/usr/bin/env bash

DIR="$( cd $(dirname "$0") && pwd )"

exhibits=(
    1x1.bmp
    1x1.gif
    1x1.tiff
    document1.doc
    document1.odt
    document1.ott
    m1.mp3
    m2.mp3
    m2_5.mp3
    sample.MP3
    sample.pdf
    spreadsheet1.ods
    spreadsheet1.ots
    spreadsheet1.xls
    test.mkv
    test.ogv
    test.webm
    xiag.url
    536208.gif
    107650.png
    9011.docx
    chips.doc
)

versions=(
    libmagic-5.11-php-5.3.11
    libmagic-5.14-php-5.4.15
    libmagic-5.17-php-5.6.0
    libmagic-5.22-php-7.0.0
)

for version in "${versions[@]}"
do
    echo
    echo ${version}
    echo

    for fileName in "${exhibits[@]}"
    do

        ${DIR}/../${version}/bin/file --mime-type -m ${DIR}/../${version}/build/magic.mime.mgc \
            ${DIR}/data/${fileName} | grep application/octet-stream

    done

done
