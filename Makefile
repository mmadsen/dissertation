.PHONY : clean

pdf:
	latexmk -f -pdf -pv dissertation




all: pdf outline


clean:
	latexmk -CA
	rm -rf *.log *.bbl *.blg *.out *.md *.gls *.loa *.tdo *.ilg
	rm -rf _minted*
