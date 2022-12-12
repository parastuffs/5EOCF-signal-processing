all: labo correction
	echo "done"
	

labo: *.tex
	pdflatex -shell-escape -jobname="lab_iir" lab_iir.tex
	pdflatex -shell-escape -jobname="lab_iir" lab_iir.tex
	

correction: *.tex
	pdflatex -shell-escape -jobname=lab_iir_correction "\def\koriG{} \input{lab_iir.tex}"
	pdflatex -shell-escape -jobname=lab_iir_correction "\def\koriG{} \input{lab_iir.tex}"
	
clean:
	rm -f lab_iir_correction.pdf rm lab_iir.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc *.fls *.fdb_latexmk
	
