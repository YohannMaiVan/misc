/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   brackets.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agrumbac <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/02/16 18:49:19 by agrumbac          #+#    #+#             */
/*   Updated: 2017/02/16 18:49:43 by agrumbac         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

int		braclose(char *str, char c, int i, int b)
{
	while (b && *(++str) && (i++))
		if (*str == c)
			b++;
		else if (*str == (c == '(' ? ')' : c + 2))
			b--;
	return (i);
}

int		brackets(char *str, char c)
{
	if (*str == 0 && c)
		return (0);
	else if (*str == c)
		return (1);
	else if (*str == '(' || *str == '{' || *str == '[')
		return (brackets(str + 1, (*str == '(' ? ')' : *str + 2)) * \
				brackets(str + braclose(str, *str, 1, 1), c));
	else if (*str == ')' || *str == '}' || *str == ']')
		return (0);
	else
		return (brackets(str + 1, c));
}

int		main(int ac, char **av)
{
	int		i;

	i = 0;
	if (ac > 1)
		while (++i < ac)
		{
			if (brackets(av[i], 0))
				write(1, "OK\n", 3);
			else
				write(1, "Error\n", 6);
		}
	else
		write(1, "\n", 1);
	return (0);
}
