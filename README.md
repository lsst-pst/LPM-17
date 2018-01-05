# LPM-17
The LSST Science Requirements Document ([LPM-17](https://ls.st/LPM-17))

To make the `LSSTSRD.ps` file:

```bash
latex LSSTSRD.tex; latex LSSTSRD.tex
makeglos.pl LSSTSRD.glo
latex LSSTSRD.tex
dvips -t letter -o LSSTSRD.ps LSSTSRD.dvi
ps2pdf LSSTSRD.ps
```

Note:

Text is in files:

* `introduction.tex`
* `scidrivers.tex`
* `tables.tex`
* `membership.tex`
* `appendices.tex`

which are included in the main file `LSSTSRD.tex`

Three support files are required: `makeglos.pl`, `pdfrhl.tex` and
`glossary.sty`; and the rest is standard latex.

***the pdf file can be built by simply executing `> make`***


If you run into this error:
`LaTeX Error: File lsstdoc.cls not found.`
then follow instructions at https://lsst-texmf.lsst.io/install.html
