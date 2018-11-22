These are notes on examples in graduate level mathematics. To build the notes, you will need software such
as `Inkscape` to convert `.svg` files in to `.pdf` files. You also need to make sure that `Inkscape` is in
your `PATH` variable.

# Building the Notes

Run the following in a terminal from the project's main directory.

```
inkscape --file=Topology/FundamentalGroupQuotient/deformationRetract.svg --export-pdf=_generated/deformationRetract.pdf
inkscape --file=Topology/FundamentalGroupQuotient/deformationRetract2.svg --export-pdf=_generated/deformationRetract2.pdf
inkscape --file=Topology/FundamentalGroupQuotient/embedding.svg --export-pdf=_generated/embedding.pdf
inkscape --file=Topology/FundamentalGroupQuotient/intersection.svg --export-pdf=_generated/intersection.pdf
inkscape --file=Topology/FundamentalGroupQuotient/mobius.svg --export-pdf=_generated/mobius.pdf
inkscape --file=Topology/FundamentalGroupQuotient/split.svg --export-pdf=_generated/split.pdf

inkscape --file=Topology/SimplePoincareTorusBundle/improperVertFace.svg --export-pdf=_generated/improperVertFace.pdf
inkscape --file=Topology/SimplePoincareTorusBundle/slices.svg --export-pdf=_generated/slices.pdf
inkscape --file=Topology/SimplePoincareTorusBundle/slicesDelta.svg --export-pdf=_generated/slicesDelta.pdf

pdflatex main
bibtex main
pdflatex main
pdflatex main
```

