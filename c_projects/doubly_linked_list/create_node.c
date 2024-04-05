#include "main.h"
/**
 * create_node - creates a doubly linked list node
 * Return: 0
*/
void create_node(void)
{
    struct new_node *head = NULL;
    head = malloc(sizeof(struct new_node));

    head->next_link = NULL;
    head->num = 45;
    head->prev_link = NULL;
    head = add_to_beginning(head, 10);
    print_list(head);
}