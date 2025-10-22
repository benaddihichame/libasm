NAME = libasm.a
SRCS = src/ft_strlen.s \
	   src/ft_strcpy.s \
	   src/ft_strcmp.s \
	   src/ft_write.s \
	   src/ft_read.s \
	   src/ft_strdup.s

OBJS = $(SRCS:.s=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)
%.o: %.s
	nasm -f elf64 $< -o $@
clean:
	rm -f $(OBJS)
fclean: clean
	rm -f $(NAME)
re: fclean all
.PHONY: all clean fclean re
