#include "main.h"
/**
 * count_node - counts the number of node in a list
 * Return: int
*/

int count_node(struct new_node *head)
{
    int count = 0;
    if (head == NULL)
    {
        printf("List is empty");
    }
    struct new_node *ptr = NULL;
    ptr = malloc(sizeof(struct new_node));
    ptr = head;

    while (ptr != NULL/* condition */)
    {
        count += 1;
        ptr = ptr->link;
    }
    return (count);
}