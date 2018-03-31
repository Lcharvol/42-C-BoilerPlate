rm -rf Makefile
touch Makefile
echo "# **************************************************************************** #
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

NAME="$PROJECT_NAME"

SRCS:=srcs/main.c 

INC=./includes/"$PROJECT_NAME".h

FLAGS=-Wall -Werror -Wextra -I./includes

OBJ=\$(addprefix srcs/, \$(SRCS:.c=.o))
" >> Makefile 
if [ $USE_LIBFT = true ] 
	then echo "all: libft \$(NAME)" >> Makefile;
else echo "all: \$(NAME) " >> Makefile
fi 
if [ $USE_LIBFT = true ]
	then echo "
	libft:
		@make -C libft" >> Makefile;
fi
echo "
\$(NAME): libft \$(INC) \$(OBJ) 
	@make -C libft
	@gcc -o \$(NAME) \$(FLAGS) \$(OBJ) -L libft -lft

clean:
	make clean -C libft
	rm -f \$(OBJ)

fclean: clean
	make fclean -C libft
	rm -f \$(NAME)

re: fclean all" >> Makefile