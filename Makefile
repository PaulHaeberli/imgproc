
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
	./qoimutil -toqoim testimages/* tmp/IN.qoim
	./qoimutil -print tmp/IN.qoim 
	./qoimutil -topng tmp/IN.qoim tmp/TEST
	./imgproc tmp/IN.qoim tmp/PROC.qoim saturate 1.5 softedge 0.1
	./qoimutil -topng tmp/PROC.qoim tmp/PROC
	open tmp/TEST000.png tmp/PROC000.png tmp/TEST002.png tmp/PROC002.png tmp/TEST004.png tmp/PROC004.png
