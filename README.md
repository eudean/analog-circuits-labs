
EE105 Labs
==========

### CONTENTS
1. [Introduction](#1-introduction)
2. [Required Software](#2-required-software)
3. [Compilation](#3-compilation)
4. [Solutions](#4-solutions)
5. [Authors](#5-authors)

## 1. Introduction

This readme describes how to compile the EE105 labs. They are written in LaTeX
and require certain packages and utilities that will be described below.
Editing these labs requires knowledge of LaTeX. Editing diagrams requires
knowledge of the circuit_macros package, and editing graphs requires knowledge
of the Asymptote software.

This document should be written with the standard 80 column width. All URLs
should be enclosed within square brackets to eliminate ambiguities.

## 2. Required Software

### LaTeX

Windows (Cygwin)

* [MiKTeX](http://miktex.org/)
* [teTeX](http://www.tug.org/tetex/)
* [TeX](ive [http://www.tug.org/texlive/)

Mac OS, Linux

* [MacTeX](http://www.tug.org/mactex/)
* [TeX Live](http://www.tug.org/texlive/)

Although there are many LaTeX packages, we've tested the ones listed above
and have confirmed their functionality with these labs. It is essential that
the LaTeX package you have includes latex, dvips, and gs (Ghostscript).
[Ghostscript is also available separately](http://pages.cs.wisc.edu/~ghost/doc/GPL/index.htm).

We make use of various additional LaTeX packages such as SIUnits which may
not be included in your default LaTeX installation. These may be installed
individually as needed or by finding the appropriate package. Installing
the texlive-full Ubuntu package will pull everything you need, but it is a
very large download. You will need to install the provided ee105.sty file
into your texmf directory as well.

### [Asymptote](http://asymptote.sourceforge.net/)

For Mac OS, Asymptote can be installed from MacPorts, Homebrew, or from
source. To install from source, download the source and run the following
commands in the source directory:

```bash
$ ./configure
$ sudo make all
$ sudo make install
```

### [Circuit Macros](http://www.ctan.org/tex-archive/graphics/circuit_macros/)

The circuit_macros package requires [certain Groff utilities](http://www.gnu.org/software/groff/).
Most installations of Mac OS and Linux should have these packages already
installed or available via a repository.

The Makefiles by default assume that you install Circuit Macros at
$(HOME)/circuit_macros.

## 3. Compilation

To compile the labs, simply run 'make' from the base directory. You can clean
all files created by make by typing 'make clean'. To test whether you have all
the necessary software to compile the labs, type 'make test'. Any missing
software will be reported.

## 4. Solutions

Solutions are currently held privately in order to avoid widespread
distribution among students. Please contact the authors if you are interested
in obtaining a copy of the solutions to the labs.

## 5. Authors

These labs were written by the following students at UC Berkeley during the
summer of 2007, listed alphabetically by name:

* Jonathan Ellithorpe
* Matt Johnson
* Wilson Ko
* Chen Sun
* Eudean Sun (eudean@eudean.com)
* Kevin Wang

Support from Prof. Tsu-Jae King Liu, Ferenc Kovac, Tho Nguyen, and the rest of
the ESG staff was essential to the authoring of these labs. The original EE105
labs, authored by W.T. Yeung and R.T. Howe, were extremely useful references
for authoring these labs.
