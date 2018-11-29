# Builds static fonts

mkdir statics

fontmake -o ttf -g RobotoSlab.glyphs -i

rm -rf master_ufo
rm -rf instance_ufo

for path in instance_ttf/*.ttf; do
	filename=${path##*/}
	ttfautohint $path statics/$filename -I
done

rm -rf instance_ttf

