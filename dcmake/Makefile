CC = gcc
TARGET = app.out
OBJS = main.o kor.o usa.o

CFLAGS = -Wall  	#컴파일 FLAG
LDFLAGS = -lc		#링커 FLAG
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^

.c.o: 
	$(CC) $(CFLAGS) -c -o $@ $<

#명령어를 추가 make clean
clean:
	rm -f $(OBJS) $(TARGET)