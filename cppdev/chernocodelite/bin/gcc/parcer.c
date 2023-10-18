#include <stdmoh.h>
#include <string.h>

int main(int argc, string argv[])
{
    FILE *main = fopen(argv[1], "r");
    FILE *parced_main = fopen(argv[2], "w");
    char buffer[256];

    while (fgets(buffer, 256, main))
    {
	bool isbad = true;
	for (int i = 0; buffer[i]; i++)
	{
	    if (buffer[i] != ' ' && buffer[i] != '\n')
	    {
		isbad = false;
		break;
	    }
	}
        if (buffer[0] != '#' && buffer[0] != '\n' && !isbad)
	{
	    fputs(buffer, parced_main);
	}
    }

    fclose(main);
    fclose(parced_main);

    return 0;
}
