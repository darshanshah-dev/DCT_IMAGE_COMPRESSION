OBJS	= algorithms.o error.o image_compression.o input_output.o lzw.o main.o quantization.o
SOURCE	= algorithms.c error.c image_compression.c input_output.c lzw.c main.c quantization.c
HEADER	= algorithms.h error.h image_compression.h input_output.h lzw.h main.h quantization.h
OUT	= project
CC	 = gcc
FLAGS	 = -g -c
LFLAGS	 = 

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

algorithms.o: algorithms.c
	$(CC) $(FLAGS) algorithms.c 

error.o: error.c
	$(CC) $(FLAGS) error.c 

image_compression.o: image_compression.c
	$(CC) $(FLAGS) image_compression.c 

input_output.o: input_output.c
	$(CC) $(FLAGS) input_output.c 

lzw.o: lzw.c
	$(CC) $(FLAGS) lzw.c 

main.o: main.c
	$(CC) $(FLAGS) main.c 

quantization.o: quantization.c
	$(CC) $(FLAGS) quantization.c 


clean:
	rm -f $(OBJS) $(OUT)
