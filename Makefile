.PHONY : clean

.PHONY: pdf
pdf:
	latexmk -f -pdf -pv dissertation
	gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=dissertation-madsen-full.pdf dissertation.pdf fullcv/madsen-fullcv.pdf

all: pdf 

.PHONY: show
show:
	open -a /Applications/Skim.app  "dissertation-madsen-full.pdf"

clean:
	latexmk -CA
	rm -rf *.log *.bbl *.blg *.out *.md *.gls *.loa *.tdo *.ilg *.lof *.lot *.synctex.gz *.fdb_latexmk
	rm -f dissertation-madsen-full.pdf
	rm -rf _minted*
