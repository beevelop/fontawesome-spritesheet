# Font Awesome Spritesheet Generator

[![Greenkeeper badge](https://badges.greenkeeper.io/beevelop/fontawesome-spritesheet.svg)](https://greenkeeper.io/)

> Simple Docker image to generate Font Awesome icons into a embeddable Spritesheet (@1x and @2x / "retina").

## Example
```bash
# Clone this repo and run

docker build -t fass

docker run -it -v `pwd`/dist/:/opt/fa/dist/ \
	-e COLOR=blue -e SIZE=128 \
	--rm fass
```

Results are stored in `/opt/fa/dist` and can be mounted with `-v`.

## Configuration (ENVs)
- `COLOR`: String / hexcode with the color's name (default: `black`)
- `SIZE`: Integer for the @1x resolution (default: `64`)

-----

This plugin uses https://github.com/tupadr3/Font-Awesome-SVG-PNG and https://github.com/Ensighten/grunt-spritesmith to the magic. Thanks guys!
