CC = g++ -O2 -Wno-deprecated

tag = -i

ifdef linux
tag = -n
endif

libaccesslevel.a: accesslevel.o
		  ar cr libaccesslevel.a accesslevel.o
accesslevel.o: accesslevel.c accesslevel.h
	       cc -c accesslevel.c
clean:
	rm -f *.o
