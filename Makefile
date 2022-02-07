
all: imgproc.c
	cc imgproc.c -o imgproc

allc: qoimdemo.c
	cc qoimdemo.c -o qoimdemo

allcpp: qoimdemo.cpp
	c++ qoimdemo.cpp -o qoimdemo

clean:
	rm -f qoimdemo
	rm -f test.qoim
	rm -f proc.qoim
	-rm -f TEST*.png
	-rm -f PROC*.png

testall:
	./qoimdemo -toqoim testimages/* test.qoim
	./qoimdemo -print test.qoim
	./qoimdemo -topng test.qoim TEST

proc:
	./imgproc test.qoim proc.qoim perhist 0.01 0.99
	./qoimdemo -topng proc.qoim PROC
	open TEST000.png PROC000.png
