#include "main.h"
/**
 * add_node - adds a node at the end of a list
 * Return: new_node
*/
void add_node(struct new_node *head, int val)
{
    struct new_node *ptr, *tmp;

    tmp = malloc(sizeof(struct new_node));
    ptr = head;
    tmp->num = val;
    tmp->link = NULL;

    while(ptr->link != NULL)
    {
        ptr = ptr->link;
    }
    ptr->link = tmp;
}