#ifndef MAIN_H
#define MAIN_H
#include<stdio.h>
#include <stdlib.h>
struct new_node {
    int num;
    struct new_node *link;
};
void creating_linked_list(void);
int count_node(struct new_node *head);
void print_data(struct new_node *head);
void add_node(struct new_node *head, int num);
#endif