#include "main.h"
/**
 * insertion_sort - implementing the insertion sort
 * @arr: array or list
 * @n: number of insertion
 * return: ordered array
 *
 */

void insertion_sort(int arr[], int n)
{
    int i, j,key;

    for (i = 0; i < n; i++)
    {
        key = arr[i];
        j = i - 1;

        while (j >= 0 && arr[j] > key)
        {
            arr[j + 1] = arr[j];
            j = j - 1;
        }
        arr[j + 1] = key;
    }
    for (int p = 0; p < n; p++)
    {
        printf("%d", arr[p]);
    }
    printf("\n");
} 