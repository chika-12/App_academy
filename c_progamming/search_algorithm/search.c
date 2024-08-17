#include<stdio.h>
#include "main.h"
int main(void)
{
    int array[10] = {1, 3, 6, 8, 9, 2, 4, 0};
    int target = 0;
    int len = sizeof(array) / sizeof(array[0]);
    int index = search(array, len, target);
    if (index != -1)
    {
        printf("Number %d found at index %d\n", target, index);
    }
    else
    {
        printf("%d not found", target);
    }
    return(0);
}