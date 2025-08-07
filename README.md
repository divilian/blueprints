# Image conversion

1. Make diagram in LibreOffice.
2. Save as .odg.
3. Export... as .svg.
4. Run:

```
$ inkscape theNameOf.svg \
  --export-area-drawing \
  --export-dpi=96 \
  --export-width=DESIRED_WIDTH_PIX \
  --export-height=DESIRED_HEIGHT_PIX \
  --export-type=pdf \
  --export-filename=theNameOf.pdf
```
