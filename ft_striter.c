/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_striter.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mmarcink <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/05 15:39:17 by mmarcink          #+#    #+#             */
/*   Updated: 2018/03/05 15:39:17 by mmarcink         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void			ft_striter(char *s, void (*f)(char *))
{
	size_t i;

	i = 0;
	if (s && f)
	{
		while (s[i])
		{
			f(&s[i]);
			i++;
		}
	}
}