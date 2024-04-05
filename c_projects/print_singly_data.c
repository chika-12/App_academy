#include "main.h"
/**
 * print_data - prints the data in a singly linked list
 * Return: 0
*/
void print_data(struct new_node *head)
{
    if (head == NULL)
    {
        printf("List is empty");
    }
    struct new_node *ptr = NULL;

    ptr = head;
    printf("These are the elements in your linked list: | ");
    while (ptr != NULL)
    {
        printf("%d ", ptr->num);
        printf("| ");
        ptr = ptr->link;
    }
}