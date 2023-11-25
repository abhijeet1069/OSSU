paper.pdf : paper.tex plot-data.png
	pdflatex paper.tex

# %.dat - Match any file ending .dat 
# $* - produce whatever file was matched in .dat 
# $@ - name of the target
plot-%.png : %.dat plot.py
	./plot.py -i $*.data -o $@
