# Builds static fonts

mkdir statics

cp RobotoSlab.glyphs RobotoSlabBuild.glyphs

python tools/fix-glyph-names.py RobotoSlabBuild.glyphs

fontmake -o ttf -g RobotoSlabBuild.glyphs -i

rm -rf master_ufo
rm -rf instance_ufo

for path in instance_ttf/*.ttf; do
	filename=${path##*/}
	ttfautohint $path statics/$filename -I
done

rm -rf instance_ttf
rm -rf RobotoSlabBuild.glyphs

