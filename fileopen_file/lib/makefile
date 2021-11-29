src=$(wildcard *.c)
obj=$(patsubst %.c,%.o,$(src))
target=libtest1.a

$(target):$(obj)
	ar rcs $@ $^

%.o:%.c
	gcc -c $<

.PHONY:clean

clean:
	rm -rf $(target) $(obj)
