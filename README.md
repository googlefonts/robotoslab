# Roboto Slab Font Project
by Christian Robertson

Roboto has a dual nature. It has a mechanical skeleton and the forms are
largely geometric. At the same time, the font features friendly and open
curves. While some grotesks distort their letterforms to force a rigid rhythm,
Roboto doesn’t compromise, allowing letters to be settled into their natural
width. This makes for a more natural reading rhythm more commonly found in
humanist and serif types.

This is the Roboto Slab family, which can be used alongside the normal
[Roboto](https://fonts.google.com/specimen/Roboto) family and the
[Roboto Condensed](https://fonts.google.com/specimen/Roboto+Condensed) family.

This project is a fork from the old Google font repository.

# Completed tasks:

* Port original binaries to UFO sources with cubic outlines
* use fontmake to build.

# Todo:

* Improve README.md
* Get Metadata up to data, add appropriate email address
* Run fonts through Fontbakery and ship fonts.

# Building

First you should setup a python virtual environment:

```sh
# the name "venv" is used in "scripts/bin/build/sh"
$ virtualenv venv
# activate the virtual environment
$ . ./venv/bin/activate
# install the dependencies
$ pip install -r reguirements.txt
```

With that in place and with the virtual envronment activated, build the fonts like so:

## Masters

```sh
$ ./scripts/bin/build.sh
```

Alternatively, invoke fontmake directly:

```sh
$ cd fonts
$ fontmake -m ../sources/RobotoSlab.designspace
```

## Instances

In the designspace document, also some instances are described, this can create font-instances by interploation. However, the masters are not fully compatible and thus the instances are not complete/broken.

```sh
$ cd fonts
$ fontmake -m ../sources/RobotoSlab.designpace -i
```
