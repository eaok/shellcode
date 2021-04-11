src=$(wildcard *.c ./sub/*.c)
dir=$(notdir $(src))
obj=$(patsubst %.c,%.o,$(dir) )

all:
	@#a.c b.c ./sub/sa.c ./sub/sb.c
	@echo $(src)
	
	@#a.c b.c sa.c sb.c
	@echo $(dir)
	
	@#a.o b.o sa.o sb.o
	@echo $(obj)
	@echo "end"
