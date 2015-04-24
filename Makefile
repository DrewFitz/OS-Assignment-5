programs = load clean change query print
headers = shared_memory.h semaphore.h
warnings = -Wall -Wno-unknown-warning-option -Wno-cpp -Wno-implicit-function-declaration

.PHONY: all cleanup

.SECONDEXPANSION:
$(programs): $$@.c $(headers)
	gcc $< --std=c99 -g $(warnings) -o $@

all: $(programs)

cleanup:
	rm $(programs)
	rm -rf *.dSYM/
	