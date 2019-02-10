# Builds static fonts
cp RobotoSlab.glyphs Build.glyphs

python2 $(dirname ${BASH_SOURCE[0]})/delNonExp.py Build.glyphs

mkdir statics

fontmake -o ttf -g Build.glyphs -i

rm -rf master_ufo
rm -rf instance_ufo
rm -rf Build.glyphs

for path in instance_ttf/*.ttf; do
	filename=${path##*/}
	gftools fix-dsig --autofix $path
	ttfautohint $path statics/$filename -I
done

rm -rf instance_ttf

