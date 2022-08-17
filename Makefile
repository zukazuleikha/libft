# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nmohd-sh <nmohd-sh@student.42kl.edu.my>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/06 19:45:50 by nmohd-sh          #+#    #+#              #
#    Updated: 2022/07/26 17:26:39 by nmohd-sh         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS = ft_isalpha.c\
		ft_isdigit.c \
		ft_strlen.c \
		ft_isalnum.c	\
		ft_isascii.c	\
		ft_isprint.c	\
		ft_memset.c		\
		ft_bzero.c		\
		ft_memcpy.c		\
		ft_strncmp.c	\
		ft_putchar_fd.c	\
		ft_putstr_fd.c	\
		ft_putendl_fd.c	\
		ft_putnbr_fd.c	\
		ft_strlcpy.c	\
		ft_strlcat.c	\
		ft_toupper.c	\
		ft_tolower.c	\
		ft_strchr.c		\
		ft_strrchr.c	\
		ft_memchr.c		\
		ft_memcmp.c		\
		ft_strnstr.c	\
		ft_atoi.c		\
		ft_calloc.c		\
		ft_strdup.c		\
		ft_substr.c		\
		ft_strjoin.c	\
		ft_strtrim.c	\
		ft_split.c		\
		ft_itoa.c		\
		ft_strmapi.c	\
		ft_striteri.c	\
		ft_memmove.c	

BSRCS = \
		ft_lstnew.c		\
		ft_lstnew.c		\
		ft_lstadd_front.c	\
		ft_lstsize.c	\
		ft_lstlast.c	\
		ft_lstadd_back.c	\
		ft_lstdelone.c		\
		ft_lstclear.c		\
		ft_lstiter.c		\
		ft_lstmap.c			

OBJS= ${SRCS:.c=.o} 

BOBJS = $(BSRCS:.c=.o)

CC	= gcc

CFLAGS = -Wall -Wextra -Werror -g

all: $(NAME) 

$(NAME) : $(OBJS)
	ar rcs $(NAME) ${OBJS}

bonus: $(OBJS) $(BOBJS)
	$(AR) -r $(NAME) $?


%.o		: %.c 
	$(CC) $(CFLAGS) -c $< -o $@

clean	: 
	$(RM) $(OBJS) $(BOBJS)

fclean	: clean
			$(RM) $(NAME)

re		:	fclean all

.PHONY	:	all bonus clean fclean re


