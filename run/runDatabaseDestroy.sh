#!/bin/sh

if [ $# -ne 1 ] ; then
    echo "usage: $(basename $0) PROPS" >&2
    exit 2
fi

PROPS="$1"
if [ ! -f "${PROPS}" ] ; then
    echo "${PROPS}: no such file or directory" >&2
    exit 1
fi
DB="$(grep '^db=' $PROPS | sed -e 's/^db=//')"

STEPS="tableDrops"

for step in ${STEPS} ; do
    ./runSQL.sh "${PROPS}" $step
    RET=$?
        if [ "${RET}" -ne 0 ]; then
        echo "Errors from $step, aborting.."
        echo
        echo "Database may not have been completely removed, check before re-running benchmark"
        exit 255;
    fi
done
