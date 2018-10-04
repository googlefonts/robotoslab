cp RobotoSlab.glyphs RobotoSlabBuild.glyphs

python tools/fix-glyph-names.py RobotoSlabBuild.glyphs

fontmake -o variable -g RobotoSlabBuild.glyphs

rm -rf master_ufo
rm -rf RobotoSlabBuild.glyphs

cd variable_ttf

gftools fix-nonhinting RobotoSlab-VF.ttf RobotoSlab-VF.ttf
gftools fix-dsig --autofix RobotoSlab-VF.ttf
gftools fix-gasp RobotoSlab-VF.ttf

ttx RobotoSlab-VF.ttf

rm -rf RobotoSlab-VF.ttf
rm -rf RobotoSlab-VF-backup-fonttools-prep-gasp.ttf

cd ..

cat variable_ttf/RobotoSlab-VF.ttx | tr '\n' '\r' | sed -e "s,<STAT>.*<\/STAT>,$(cat tools/patch.xml | tr '\n' '\r')," | tr '\r' '\n' > RobotoSlab-VF.ttx

rm -rf variable_ttf

ttx RobotoSlab-VF.ttx

rm -rf RobotoSlab-VF.ttx