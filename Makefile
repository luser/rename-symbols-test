test-bin: test1.o test2.o main.o
	gcc -o $@ $^

test1_x.o: test.c
	gcc -fvisibility=hidden -c test.c -o $@

test2_x.o: test.c
	gcc -fvisibility=hidden -c test.c -o $@

test1.o: test1_x.o
	objcopy --redefine-sym foo=foo1 $< $@

test2.o: test1_x.o
	objcopy --redefine-sym foo=foo2 $< $@

.PHONY: clean
clean:
	rm -f *.o test-bin
