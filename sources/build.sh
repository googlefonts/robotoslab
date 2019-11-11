#!/bin/sh
set -e


echo "Generating Static fonts"
mkdir -p ../fonts ../fonts/variable ../fonts/static
fontmake -g RobotoSlab.glyphs -i -o ttf --output-dir ../fonts/static/

echo "Generating VFs"
VF_FILENAME="../fonts/variable/RobotoSlab[wght].ttf"
fontmake -g RobotoSlab.glyphs -o variable --output-path $VF_FILENAME
rm -rf master_ufo/ instance_ufo/


echo "Post processing"
ttfs=$(ls ../fonts/static/*.ttf)
for ttf in $ttfs
do
	gftools fix-dsig -f $ttf;
	./ttfautohint-vf $ttf "$ttf.fix";
	mv "$ttf.fix" $ttf;
	gftools fix-hinting $ttf;
	mv "$ttf.fix" $ttf;
done

echo "Post processing VFs"
gftools fix-dsig -f $VF_FILENAME;
./ttfautohint-vf --stem-width-mode nnn $VF_FILENAME "$VF_FILENAME.fix";
mv "$VF_FILENAME.fix" $VF_FILENAME;
gftools fix-hinting $VF_FILENAME;
mv "$VF_FILENAME.fix" $VF_FILENAME;

ttx -f -x "MVAR" $VF_FILENAME; # Drop MVAR. Table has issue in DW
rtrip=$(basename -s .ttf $VF_FILENAME)
new_file=../fonts/variable/$rtrip.ttx;
rm $VF_FILENAME;
ttx $new_file
rm $new_file

# Patch name and STAT tables
ttx -m $VF_FILENAME patch.ttx
mv patch.ttf $VF_FILENAME

