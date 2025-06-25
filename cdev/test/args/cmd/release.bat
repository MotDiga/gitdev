cd ..

gcc -o bin_obj\release\stdargs.o -std=c99 -Wall -Wextra -Iinclude -Isrc -D_RELEASE -O2 -c src\stdargs.c
gcc -o bin_obj\release\main.o    -std=c99 -Wall -Wextra -Iinclude -Isrc -D_RELEASE -O2 -c src\main.c

gcc -o bin\release\args.exe bin_obj\release\main.o bin_obj\release\stdargs.o -std=c99 -Wall -Wextra -Llib -s -lm

cd cmd