.PHONY:all
src=$(wildcard *.c)
obj=$(patsubst %.c,%.o,$(src))
target=$(patsubst %.c,%,$(src))

all:$(target)


.PHONY:clean

clean:
	rm -rf $(target) $(obj)
