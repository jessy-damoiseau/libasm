NAME = libasm
NAME_LIB = $(NAME).a

SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJS = $(SRCS:.s=.o)

CC = clang
CFLAGS = -Wall -Wextra -Werror -g

.PHONY: all clean fclean re

all: $(NAME_LIB)

$(NAME_LIB): $(OBJS)
	ar rcs $@ $^

%.o: %.s
	nasm -f elf64  $< -o $@

test: $(NAME_LIB)
	$(CC) main.c -L. -lasm -o test

clean:
	rm -f $(OBJS) 

fclean: clean
	rm -f $(NAME_LIB) test 

re: fclean all