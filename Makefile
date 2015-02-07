all: BSL-explained.pdf

BSL-explained.pdf: BSL-explained.bbl BSL-explained.ind
	pdflatex BSL-explained
	pdflatex BSL-explained
	pdflatex BSL-explained

BSL-explained.bbl: BSL-explained.aux
	biber BSL-explained

BSL-explained.aux: BSL-explained.tex
	pdflatex BSL-explained

BSL-explained.ind: BSL-explained.tex
	makeindex BSL-explained

clean:
	@rm -f *.aux *.out *.log *.idx *.toc BSL-explained.pdf
	@rm -f *.bbl *.bcf *.blg *.run.xml BSL-explained-blx.bib
	@rm -f *.ind
