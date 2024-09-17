#include <stdio.h>
#include <stdlib.h>
#include "header.h"
/**
 * identify_snowflakes
 * return 0
 */
void identify_snowflakes(int arr[], int n)
{
    int index;
    int idx;

    for(index = 0; index < n; index++)
    {
        for(idx = index + 1; idx< n; idx++)
        {
            if(arr[index] == arr[idx])
            {
                printf("Twin intergers found\n");
                printf("%d\n",arr[index]);
                return;
            }
        }
    }
    printf("No twin integers found\n");
}