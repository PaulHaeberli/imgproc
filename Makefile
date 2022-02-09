all: qoimutil imgproc

qoimutil: qoimutil.c
	cc qoimutil.c -o qoimutil
	
imgproc: imgproc.c
	cc imgproc.c -o imgproc

clean:
	rm -f qoimutil
	rm -f imgproc
	rm -fr tmp
	mkdir tmp

test:
	./imgproc testimages/INPUT070.png tmp/PROC.png saturate 1.2 roundcorners 0.1 3.0
	open tmp/PROC.png

testqoim:
	./qoimutil -toqoim testimages/* tmp/IN.qoim
	./imgproc tmp/IN.qoim tmp/PROC.qoim saturate 1.5 softedge 0.1
	./qoimutil -topng tmp/PROC.qoim tmp/PROC
	open tmp/PROC000.png tmp/PROC002.png tmp/PROC004.png
