#include <stdio.h>

int main(int argc, char const *argv[])
{
    int n = 8;
    int toou = 1;
    while (n > 1)
    {
        toou *= n;
        n--;
    }
    return 0;
}
