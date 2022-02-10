all: qomutil imgproc

qomutil: qomutil.c
	cc qomutil.c -o qomutil

imgproc: imgproc.c
	cc imgproc.c -o imgproc

lib.o: lib.c
	cc -c lib.c
	
clean:
	rm -f qomutil
	rm -f imgproc
	rm -fr tmp
	rm -fr lib.o
	mkdir tmp

test:
	./imgproc testimages/INPUT070.png tmp/PROC.png zoom 0.5 0.5 setaspect 3.0 roundcorners 0.1 3.0
	open testimages/INPUT070.png tmp/PROC.png
	./qomutil -toqom testimages/* tmp/IN.qom
	./qomutil -print tmp/IN.qom
	./imgproc tmp/IN.qom tmp/PROC.qom saturate 1.5 softedge 0.1
	./qomutil -topng tmp/PROC.qom tmp/PROC
	open tmp/PROC0000.png tmp/PROC0002.png tmp/PROC0004.png

