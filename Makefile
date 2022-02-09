all: qomutil imgproc

qomutil: qomutil.c
	cc qomutil.c -o qomutil
	
imgproc: imgproc.c
	cc imgproc.c -o imgproc

clean:
	rm -f qomutil
	rm -f imgproc
	rm -fr tmp
	mkdir tmp

test:
	./imgproc testimages/INPUT070.png tmp/PROC.png zoom 0.5 0.5 setaspect 3.0 roundcorners 0.1 3.0
	open testimages/INPUT070.png tmp/PROC.png

testqom:
	./qomutil -toqom testimages/* tmp/IN.qom
	./imgproc tmp/IN.qom tmp/PROC.qom saturate 1.5 softedge 0.1
	./qomutil -topng tmp/PROC.qom tmp/PROC
	open tmp/PROC000.png tmp/PROC002.png tmp/PROC004.png
