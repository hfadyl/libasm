NAME = libasm.a

SRCS = ft_strcmp.s\
	ft_strlen.s\
	ft_write.s\
	ft_read.s\
	ft_strcpy.s\
	ft_strdup.s

OBJ = $(SRCS:.s=.o)

NASM = nasm -f macho64

all :$(NAME)

$(NAME): $(OBJ)
		@ar rc $(NAME) $(OBJ)
		@ranlib $(NAME)
			 
%.o: %.s
	@$(NASM) $^

clean :
	@rm -rf $(OBJ)

fclean : clean
	@rm -rf $(NAME)
	@rm -rf libasm

re : fclean all

run:
	@gcc main.c -L. -lasm $(NAME) -o libasm