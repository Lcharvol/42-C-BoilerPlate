path='./Projects/'$PROJECT_NAME'/srcs'
rm -rf $path
mkdir $path
touch $path/main.c
echo "/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lcharvol <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/03/04 00:43:48 by lcharvol          #+#    #+#             */
/*   Updated: 2017/03/18 00:04:29 by lcharvol         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include \"../includes/"$PROJECT_NAME".h\"

int	main(int argc, char **argv)
{
	return (0);
}" >> $path/main.c