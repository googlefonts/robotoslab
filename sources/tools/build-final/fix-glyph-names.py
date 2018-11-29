import sys
import re
from glyphsLib.glyphdata import get_glyph
from glyphsLib import GSFont

filename = sys.argv[-1]
font = GSFont(filename)
changeName = {}

for glyph in font.glyphs:
	if re.match(".*-.*", get_glyph(glyph.name)[1]) != None:
		before = glyph.name
		glyph.name = re.sub("-", "_", glyph.name)
		after = glyph.name
		changeName.update({before:after})


for glyph in font.glyphs:
	for layer in glyph.layers:
		for component in layer.components:
			if component.name in changeName:
				component.name = changeName[component.name]


font.save(filename)

print "The glyphs: \n %s were renamed as \n %s" % (changeName.keys(), changeName.values())