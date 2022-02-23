##
## EPITECH PROJECT, 2022
## makefile
## File description:
## makefile
##

SRCS	=	$(wildcard *.asm)

OBJS	=	$(SRCS:.asm=.o)

NAME	=	libasm.so

all:    $(NAME)

$(NAME): $(OBJS)
	ld -o $(NAME) -shared $(OBJS)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

%.o :%.asm
	nasm -f elf64 -o $@ $<