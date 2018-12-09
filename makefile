TEX = main.tex
FINALFILE = main.pdf
DIRS = Topology/FundamentalGroupQuotient Topology/SimplePoincareTorusBundle

# Parameters are
# 	directory

define GetPics = 
$(eval SVGFILES = $(wildcard $(1)/*.svg))\
$(strip $(patsubst $(1)/%.svg, _generated/%.pdf, $(SVGFILES)))
endef

PICS = $(foreach dir, $(DIRS), $(call GetPics,$(dir)))

FINALFILE : $(TEX) $(PICS) 
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

# Parameters are 
#	directory
#	filename (no .svg extension)

define SvgRule = 

_generated/$(2).pdf : $(1)/$(2).svg
	--inkscape --file=$(1)/$(2).svg --export-pdf=_generated/$(2).pdf

endef

define DirSvgRules = 
$(eval SVGFILES = $(wildcard $(1)/*.svg)
       SVGNAMES = $$(patsubst $(1)/%.svg, %, $$(SVGFILES)))\
$(foreach name, $(SVGNAMES), $(call SvgRule,$(1),$(name)))
endef

SVGRULES = $(foreach dir, $(DIRS), $(call DirSvgRules,$(dir)))
$(eval $(SVGRULES))
