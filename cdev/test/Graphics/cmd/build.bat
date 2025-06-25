cd ..

gcc -o bin_obj\debug\stdargs.o -std=c99 -Wall -Wextra -Iinclude -Isrc -D_DEBUG -Og -g3 -c src\stdargs.c
gcc -o bin_obj\debug\stdmath.o -std=c99 -Wall -Wextra -Iinclude -Isrc -D_DEBUG -Og -g3 -c src\stdmath.c
gcc -o bin_obj\debug\rsa.o     -std=c99 -Wall -Wextra -Iinclude -Isrc -D_DEBUG -Og -g3 -c src\rsa.c
gcc -o bin_obj\debug\main.o    -std=c99 -Wall -Wextra -Iinclude -Isrc -D_DEBUG -Og -g3 -c src\main.c

gcc -o bin\debug\Graphics.exe bin_obj\debug\main.o bin_obj\debug\rsa.o bin_obj\debug\stdmath.o bin_obj\debug\stdargs.o -std=c99 -m64 -Wall -Wextra -Llib -lm -lopengl32 -lglfw3 -lglew32s -lglu32

cd cmd