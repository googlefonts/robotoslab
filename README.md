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

# Building

First you should setup a python virtual environment:

```
# Create a python virtualenv
$ python3 -m venv venv
# activate the virtual environment
$ . ./venv/bin/activate
# install the dependencies
$ pip install -r requirements.txt
# build fonts
$ cd sources
$ sh build.sh
```
