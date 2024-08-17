#include <stdio.h>
#include <stdlib.h>
#include "main.h"
/**
 * search - function
 * Return: integer
 * arr@: parameter
 * target@: parameter
 */
int search(int arr[], int len, int target)
{
    int index;
    //int len = sizeof(arr) / sizeof(arr[0]);
    for(index = 0; index < len; index++ )
    {
        if (arr[index] == target){
            return(index);
        }
    }
    return(-1);
}