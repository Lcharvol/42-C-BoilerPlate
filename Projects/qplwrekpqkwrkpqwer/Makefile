# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lcharvol <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/03/08 05:45:14 by lcharvol          #+#    #+#              #
#    Updated: 2017/03/08 05:45:15 by lcharvol         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=qplwrekpqkwrkpqwer

SRCS:=srcs/main.c 

INC=./includes/qplwrekpqkwrkpqwer.h

FLAGS=-Wall -Werror -Wextra -I./includes

OBJ=$(addprefix srcs/, $(SRCS:.c=.o))

all: $(NAME) 

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
