# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alkozma <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/11 15:35:39 by alkozma           #+#    #+#              #
#    Updated: 2020/03/07 01:48:53 by alkozma          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

SRC = ft_puts.s ft_strlen.s ft_bzero.s ft_strcat.s ft_isalpha.s ft_isdigit.s \
	  ft_isalnum.s ft_isascii.s ft_isprint.s ft_memcpy.s ft_memset.s ft_strdup.s \
	  ft_cat.s
OBJ = $(patsubst %.s,%.o,$(SRC))

CXX = /nfs/2018/a/alkozma/.brew/bin/nasm
CXXFLAGS = -f macho64

LINKER = ld
LINKERFLAGS = -aarchive -macosx_version_min 10.7.0

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.s
	$(CXX) $(CXXFLAGS) -o $@ $<

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
