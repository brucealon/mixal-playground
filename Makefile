
hello:
	mixasm hello
	mixvm -r hello

clean:
	rm -f *.mix

max:
	rm -f ~/.mdk/tape0.dev
	./populate.rb >maxout.mixal
	mixasm maxout
	mixvm -r maxout
	rm -f maxout.mixal maxout.mix
	mixasm maxtp
	mixvm -r maxtp
