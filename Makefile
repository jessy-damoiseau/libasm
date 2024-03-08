NAME = libasm
NAME_LIB = $(NAME).a
NAME_LIB_BONUS = $(NAME)_bonus.a
SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
SRCS_BONUS= $(SRCS) 
OBJS = $(SRCS:.s=.o)
OBJS_BONUS = $(SRCS_BONUS:.s=.o)
CC = clang
CFLAGS = -Wall -Wextra -Werror -g

.PHONY: all clean fclean re

all: $(NAME_LIB)

$(NAME_LIB): $(OBJS)
	ar rcs $@ $^

bonus: $(OBJS_BONUS)
	ar rcs $(NAME_LIB_BONUS) $^
%.o: %.s
	nasm -f elf64  $< -o $@

ccproject: $(NAME_LIB)
	$(CC) -no-pie  main.c -L. -lasm -o test

ccproject_bonus: bonus
	$(CC) -no-pie main.c -L. -lasm_bonus -o test_bonus

clean:
	rm -f $(OBJS) $(OBJS_BONUS) 

fclean: clean
	rm -f $(NAME_LIB) $(NAME_LIB_BONUS) test test_bonus

re: fclean all