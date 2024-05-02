#include "main.h"
/**
 * main - implementing linear sorting algorithm
 * Return 0
 */

int main(void)
{
    int scores[] = {6,7,8,1,2,0,3,4};
    
    // sorting the array
    int index;
    for (index = 0; index < 8; index++)
    {
        if (scores[index] == 9)
        {
            printf("Found");
            return (0);
        }
    }
    printf("Not found");
    return (1);
}