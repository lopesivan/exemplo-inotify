CC=gcc
CFLAGS=-Wall -g
SRCS=inotify_test.c inotify_utils.c event_queue.c
OBJS=$(foreach s,$(SRCS), $(s:.c=.o))

.c.o:
	$(CC) $(CFLAGS) -c $<

all: inotify_test

inotify_test: $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -f $(OBJS) *.bak inotify_test
