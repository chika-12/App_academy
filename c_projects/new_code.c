#include "main.h"
/**
 * main - creates a node of a linked list
 * No parameter or arguments
 * Return: 0
*/
void creating_linked_list(void)
{
    int num;
    struct new_node *head = NULL;
    head = malloc(sizeof(struct new_node));

    head->num = 67;
    head->link = NULL;
    //printf("%p\n", head);
    //printf("%p\n",head->link);
    //printf("%d\n", head->num);

    /*Creating a new node*/
    struct new_node *current = NULL;

    current = malloc(sizeof(struct new_node));
    current->num = 90;
    current->link = NULL;
    head->link = current;
    //printf("%p\n", head->link);
    //printf("%d\n", current->num);

    /*Creating the third node*/
    current = malloc(sizeof(struct new_node));
    current->num = 34;
    current->link = NULL;
    head->link->link = current;
    //printf("%d\n", current->num);
    //printf("%p\n", head->link->link);
    add_node(head, 88);
    add_node(head, 42);
    add_node(head, 100);
    num = count_node(head);
    print_data(head);
    putchar(10);
    printf("Node count:  : %d\n", num);
}