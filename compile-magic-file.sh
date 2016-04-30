#!/bin/bash

if [ -z "$1" ]
then

    echo "Usage ./mime-compile.sh libmagic-{ver}";
    exit 1;

fi

echo "Creating scripts/magic.mime.mgc file for content type euristic recognition..."


DIR="$( cd "$1" && pwd )"

cd ${DIR};

${DIR}/../make.sh && (

    TARGET_FILE=${DIR}"/../build/magic.mime"

    >${TARGET_FILE}
    find ${DIR}/magic/Magdir/ -type f | while read F
    do
        cat $F >> ${TARGET_FILE}
        echo -e "\n" >> ${TARGET_FILE}
    done

    cat ${DIR}/../patch.mime.txt >> ${TARGET_FILE}

    cd "$(dirname "${TARGET_FILE}")"
    ${DIR}/bin/file -C -m ${TARGET_FILE}

    echo "DONE: ${DIR}/../build/magic.mime.mgc"

)
