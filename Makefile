programs = load clean change query print
headers = shared_memory.h semaphore.h

.PHONY: all cleanup

.SECONDEXPANSION:
$(programs): $$@.c $(headers)
	gcc $< --std=c99 -g -Wall -o $@

all: $(programs)

cleanup:
	rm $(programs)
	rm -r *.dSYM/
	