#ifndef MAIN_H
#define MAIN_H
#include <stdio.h>
#include <stdlib.h>
struct new_node {
    struct new_node *prev_link;
    int num;
    struct new_node *next_link;
};
void create_node(void);
void print_list(struct new_node *head);
struct new_node* add_to_beginning(struct new_node *head, int node);
#endif