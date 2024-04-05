#include "main.h"
/**
 * add_to_beginning - adds alist to the beginning of a list
*/
struct new_node* add_to_beginning(struct new_node *head, int node)
{
    if (head == NULL)
    {
        printf("list is empty");
    }
    struct new_node *ptr = NULL;
    ptr = malloc(sizeof(struct new_node));

    ptr->prev_link = NULL;
    ptr->num = node;
    ptr->next_link = NULL;
    ptr->next_link = head;
    head->prev_link = ptr;
    head = ptr;
    return(head);
}