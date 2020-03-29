all: README.md TESTFILES testSRO01.txt testSRO02.txt testSRO03.txt testSRO04.txt testSROX01.txt

README.md:
	touch README.md
	echo "##*Title*: **The Unix Workbench - Peer Grades Assignment from Surton**" >> README.md
	echo "This make file is created on `date`" >> README.md
	echo "The guessinggame.sh contains `wc -l guessinggame.sh` number of code lines" >> README.md
	echo "the URL for GitHub [a link](https://github.com/surton-redjo/the-unix-workbench-PeerGradesAssignment-SRO)" >> README.md

TESTFILES:
	mkdir TESTFILES
testSRO01.txt:
	touch testSRO01.txt
	echo "testrow 01" >> testSRO01.txt
testSRO02.txt:
	touch testSRO02.txt
	echo "testrow 01" >> testSRO02.txt
	echo "testrow 02" >> testSRO02.txt
testSRO03.txt:
	touch testSRO03.txt
	echo "testrow 01" >> testSRO03.txt
	echo "testrow 02" >> testSRO03.txt
	echo "testrow 03" >> testSRO03.txt
testSRO04.txt:
	touch testSRO03.txt
	echo "testrow 01" >> testSRO04.txt
	echo "testrow 02" >> testSRO04.txt
	echo "testrow 03" >> testSRO04.txt
	echo "testrow 04" >> testSRO04.txt

testSROX01.txt:
	touch TESTFILES/testSRO01.txt
	echo "testrow 01" >> TESTFILES/testSROX01.txt

clean:
	rm README.md
	rm testSRO01.txt
	rm testSRO02.txt
	rm testSRO03.txt
	rm testSRO04.txt
	rm -r TESTFILES
