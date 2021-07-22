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

## Building

Fonts are built automatically by GitHub Actions - take a look in the "Actions" tab for the latest build.

If you particularly want to build fonts manually on your own computer, you will need to install the [`yq` utility](https://github.com/mikefarah/yq). On OS X with Homebrew, type `brew install yq`; on Linux, try `snap install yq`; if all else fails, try the instructions on the linked page.

Then:

* `make build` will produce font files.
* `make test` will run [FontBakery](https://github.com/googlefonts/fontbakery)'s quality assurance tests.
* `make proof` will generate HTML proof files.

## License

This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is copied below, and is also available with a FAQ at
http://scripts.sil.org/OFL

## Repository Layout

This font repository structure is inspired by [Unified Font Repository v0.3](https://github.com/unified-font-repository/Unified-Font-Repository), modified for the Google Fonts workflow.