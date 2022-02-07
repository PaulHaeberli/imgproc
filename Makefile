
all: qiomdemo imgproc

qiomdemo: qoimdemo.c
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

mkqiom:
	./qoimdemo -toqoim testimages/* test.qoim
	./qoimdemo -topng test.qoim TEST

proc:
	./imgproc test.qoim proc.qoim perhist 0.01 0.99
	./qoimdemo -topng proc.qoim PROC
	open TEST000.png PROC000.png
