NAME = ProjectName

SRCS = 	main.c \

INC = ./includes/ProjectName.h

FLAGS = -Wall -Werror -Wextra -I./includes

OBJ = $(addprefix srcs/, $(SRCS:.c=.o))

all: libft $(NAME) 

libft:
	@make -C libft

$(NAME): libft $(INC) $(OBJ) 
	@make -C libft
	@gcc -o $(NAME) $(FLAGS) $(OBJ) -L libft -lft

clean:
	make clean -C libft
	rm -f $(OBJ)

fclean: clean
	make fclean -C libft
	rm -f $(NAME)

re: fclean all
