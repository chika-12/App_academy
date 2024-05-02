#include "main.h"
/**
 * main - building a phone book
 * return 0
 */

int main(void)
{
    person people[2];

    people[0].name = "Chika";
    people[0].number = "234812157166";

    people[1].name = "Mark";
    people[1].number = "0821454627";
    int index;
    for (index = 0; index < 2; index++)
    {
        if (strcmp(people[index].name, "Chika") == 0)
        {
            printf("Found %s", people[index].number);
            return (0);
        }
    }
    printf("No such name");
}