all: labo correction
	echo "done"
	

labo: *.tex
	pdflatex -shell-escape -jobname="lab_fir" lab_fir.tex
	pdflatex -shell-escape -jobname="lab_fir" lab_fir.tex
	

correction: *.tex
	pdflatex -shell-escape -jobname=lab_fir_correction "\def\koriG{} \input{lab_fir.tex}"
	pdflatex -shell-escape -jobname=lab_fir_correction "\def\koriG{} \input{lab_fir.tex}"
	
clean:
	rm -f lab_fir_correction.pdf rm lab_fir.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc *.fls *.fdb_latexmk
	
