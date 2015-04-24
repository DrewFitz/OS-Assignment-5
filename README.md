# Operating System Assignment 5 #####
Written by: Andrew Fitzpatrick

## Compiling instructions #####

To make all the programs, run:

	make all

This will compile the programs: load, print, query, change, and clean. This also creates their debugging symbols.

To remove all the compiled files, run:

	make cleanup

This will remove the compiled programs and debugging symbols.


## Running instructions #####

	./load <input file>

Sets up shared memory, semaphores, loads the input file into the shared memory.

	./query <student_id>

Searches and prints out all records with student IDs that match student_id.
This also works like a prefix search, will match to records whose student IDs start with all the characters of student_id.

	./change <student_id>

Searches for the record with student_id, asks for password "000" and allows it to be rewritten.

	./print

Writes the entire database out to stdout.

	./clean <output file>

Writes the database to the output file. Tears down shared memory and semaphores.
