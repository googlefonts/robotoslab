#!/usr/bin/env bash

cd `dirname $BASH_SOURCE`/../../;
python -c 'import os;print(os.curdir)'
. ./venv/bin/activate;

pushd `pwd`;
cd fonts;
fontmake -m ../sources/RobotoSlab.designspace;
popd;

FILES=$(find fonts/master_ttf -type f -name "*.ttf")
for f in $FILES;
do
    TMP="$(dirname $f)/tmp.ttf"
    # these arguments are from the initial old/version-1.100263 files
    # there's a hint in the name-table entry of "version"
    # made by using the -I option of ttfautohint
    ttfautohint -l 8 -r 12 -G 200 -x 14 -w "" -W $f $TMP;
    mv $TMP $f;
done

fontbakery fix-dsig --autofix $FILES;
