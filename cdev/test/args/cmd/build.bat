cd ..

gcc -o bin_obj\debug\stdargs.o -std=c99 -Wall -Wextra -Iinclude -Isrc -D_DEBUG -Og -g3 -c src\stdargs.c
gcc -o bin_obj\debug\main.o    -std=c99 -Wall -Wextra -Iinclude -Isrc -D_DEBUG -Og -g3 -c src\main.c

gcc -o bin\debug\args.exe bin_obj\debug\main.o bin_obj\debug\stdargs.o -std=c99 -Wall -Wextra -Llib -lm

cd cmd