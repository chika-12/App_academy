#include "main.h"
/**
 * print_list - prints all list
 * Return: 0
*/
void print_list(struct new_node *head)
{
    if (head == NULL)
    {
        printf("The list is empty");
    }
    struct new_node *ptr = NULL;
    ptr = head;

    while(ptr != NULL)
    {
        printf("%d ", ptr->num);
        ptr = ptr->next_link;
    }
}