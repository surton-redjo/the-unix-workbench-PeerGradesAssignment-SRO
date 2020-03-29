all: TESTFILES testSRO01.txt testSRO02.txt testSRO03.txt testSRO04.txt testSROX01.txt

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
	rm testSRO01.txt
	rm testSRO02.txt
	rm testSRO03.txt
	rm testSRO04.txt
	rm -r TESTFILES
