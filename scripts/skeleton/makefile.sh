
path='./'$PROJECT_NAME'/Makefile'
echo "patn: " $path 
rm -rf $path
touch $path
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
" >> $path
if [ $USE_LIB = true ] 
	then echo "all: libft \$(NAME)" >> $path;
else echo "all: \$(NAME) " >> $path
fi 
if [ $USE_LIB = true ]
	then echo "
	libft:
		@make -C libft" >> $path;
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

re: fclean all" >> $path