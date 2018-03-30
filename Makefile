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

NAME=colpleux

SRCS:=srcs/main.c 

INC=./includes/colpleux.h

FLAGS=-Wall -Werror -Wextra -I./includes

OBJ=

all: libft  

libft:
	@make -C libft

: libft   
	@make -C libft
	@gcc -o    -L libft -lft

clean:
	make clean -C libft
	rm -f 

fclean: clean
	make fclean -C libft
	rm -f 

re: fclean all
