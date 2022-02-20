src=$(wildcard *.c)
obj=$(patsubst %.c,%.o,$(src))
target=$(patsubst %.c,%,$(src))

$(target):$(obj)
	gcc -o $@ $^ -L/usr/lib -ltest2

$(obj):$(src)
	gcc -c $< -I../include

.PHONY:clean
clean:
	rm -rf $(target)
