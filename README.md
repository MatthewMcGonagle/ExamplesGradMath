These are notes on examples in graduate level mathematics. To build the notes, you will need software such
as `Inkscape` to convert `.svg` files in to `.pdf` files. You also need to make sure that `Inkscape` is in
your `PATH` variable.

# Building the Notes

## Necessary Software

* **LaTeX**
Does the word processing and typesetting of the documents. The executable `pdflatex` is responsible for
converting `.tex` files into `.pdf` files. Also `bibtex` is used to generate a bibliography for the 
references.
* **Inkscape** 
Converts manually drawn vector graphics files `.svg` into `.pdf` files that can be used by LaTeX. The 
executable for Inkscape will need to be located on your system or user PATH variable. 
* **Something to Run `make`**
If you are using `Windows`, then you can use `MinGW`. The executable for `mingw32-make` will need to
be on your system or user PATH variable.

## Instructions

You simply need to run the make file in the main directory. If you are using Windows (and using `MinGW`, then from a terminal
opened to the main directory just run

```
mingw32-make
```

