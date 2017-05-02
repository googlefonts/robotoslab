#!/usr/bin/env bash

cd `dirname $BASH_SOURCE`/../../;
python -c 'import os;print(os.curdir)'
. ./venv/bin/activate;

cd fonts;
python -c 'import os;print(os.curdir)'
fontmake -m ../sources/RobotoSlab.designspace
