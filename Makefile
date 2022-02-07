
all: qoimdemo imgproc

qoimdemo: qoimdemo.c
	cc qoimdemo.c -o qoimdemo
	
imgproc: imgproc.c
	cc imgproc.c -o imgproc

clean:
	rm -f qoimdemo
	rm -f imgproc
	rm -f test.qoim
	rm -f proc.qoim
	-rm -f TEST*.png
	-rm -f PROC*.png

test:
	./qoimdemo -toqoim testimages/* test.qoim
	./qoimdemo -topng test.qoim TEST
	./imgproc test.qoim proc.qoim perhist 0.01 0.99 enlighten 20.0 0.7 saturate 1.2
	./qoimdemo -topng proc.qoim PROC
	open TEST000.png PROC000.png
