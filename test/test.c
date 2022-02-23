/*
** EPITECH PROJECT, 2022
** B-ASM-400-NCY-4-1-asmminilibc-jules.magyari [WSL: Ubuntu]
** File description:
** main
*/

#include <stdio.h>
#include <string.h>

int main()
{
    printf("Le strlen : %d\n", strlen("salut"));
    printf("Le strchr : %s\n", strchr("salutation", '\0'));
    printf("Le strrchr : %s\n", strrchr("salutation", 'a'));
}