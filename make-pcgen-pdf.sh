#!/bin/bash

PCGEN_PATH="${HOME}/pcgen"

PCGEN_TEMPLATES="${PCGEN_PATH}/outputsheets/d20/fantasy/pdf/csheet_fantasy_std_blackandwhite.xslt ${PCGEN_PATH}/outputsheets/d20/fantasy/htmlxml/csheet_fantasy_generic_export.xml.ftl"

for t in $PCGEN_TEMPLATES ; do
	${PCGEN_PATH}/pcgen.sh -- -E "${t}" -c "$(pwd)/$1"
done
