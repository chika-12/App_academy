#ifndef MAIN_H
#define MAIN_H

#include<stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct 
{
    char *name;
    char *number;
}person;

void insertion_sort(int arr[], int n); 

#endif