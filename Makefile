# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmarcink <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/02/19 16:26:27 by mmarcink          #+#    #+#              #
#    Updated: 2018/02/26 12:39:17 by mmarcink         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = $(wildcard *.c)
OBJECT = $(patsubst %.c, %.o, $(SRCS))
CFLAGS = -Wall -Werror -Wextra
INCLUDES = includes/

all: $(NAME)

$(NAME):
	gcc $(CFLAGS) -c $(SRCS) -I$(INCLUDES)
	ar rsc $(NAME) $(OBJECT)

clean:
	/bin/rm -f $(OBJECT)

fclean: clean
	/bin/rm -rf $(NAME)

re: fclean all
