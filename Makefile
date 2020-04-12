.PHONY : clean

.PHONY: pdf
pdf:
	latexmk -f -pdf -pv dissertation

all: pdf 

clean:
	latexmk -CA
	rm -rf *.log *.bbl *.blg *.out *.md *.gls *.loa *.tdo *.ilg *.lof *.lot *.synctex.gz *.fdb_latexmk
	rm -rf _minted*
