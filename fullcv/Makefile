.PHONY : clean

pdf:
	latexmk -pdf madsen-fullcv
	open -a /Applications/Skim.app madsen-fullcv.pdf

clean:
	latexmk -c
	rm -rf *.log *.bbl *.blg *.out *.md *.aux


