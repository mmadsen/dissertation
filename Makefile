.PHONY : clean

pdf:
	latexmk -pdf -pv dissertation




all: pdf outline


clean:
	latexmk -CA
	rm -rf *.log *.bbl *.blg *.out *.md *.gls *.loa *.tdo *.ilg
	rm -rf _minted*
