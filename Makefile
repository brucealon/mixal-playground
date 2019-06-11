
.PHONY: hello clean

hello:
	mixasm hello
	mixvm -r hello

clean:
	rm -f *.mix
