cd ..

gcc -o bin_obj\release\stdargs.o -std=c99 -Wall -Wextra -Iinclude -Isrc -D_RELEASE -O2 -c src\stdargs.c
gcc -o bin_obj\debug\stdmath.o   -std=c99 -Wall -Wextra -Iinclude -Isrc -D_RELEASE -O2 -c src\stdmath.c
gcc -o bin_obj\debug\rsa.o       -std=c99 -Wall -Wextra -Iinclude -Isrc -D_RELEASE -O2 -c src\rsa.c
gcc -o bin_obj\release\main.o    -std=c99 -Wall -Wextra -Iinclude -Isrc -D_RELEASE -O2 -c src\main.c

gcc -o bin\release\Graphics.exe bin_obj\release\main.o bin_obj\debug\rsa.o bin_obj\debug\stdmath.o bin_obj\release\stdargs.o -std=c99 -Wall -Wextra -Llib -s -lm

cd cmd