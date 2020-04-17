/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alkozma <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/04 03:02:18 by alkozma           #+#    #+#             */
/*   Updated: 2020/03/07 03:26:36 by alkozma          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

int	ft_puts(char *c);
int	ft_strlen(char *a);
void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *s1, char *s2);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
void	*ft_memcpy(void *dst, void *src, size_t n);
void	*ft_memset(void *b, int c, size_t len);
char	*ft_strdup(char *s);
void	ft_cat(int fd);

int		main(int argc, char **argv)
{
	char	c[50];
	char	d[] = "test";
	char	e[10] = { 0 };
	char	f[] = "abc2s. 094 a";
	char	g[50];
	char	*h;
	char	*j;
	int		fd;

	if (!argc)
	{
		//...
	}
	j = malloc(sizeof(char) * 10);
	for (int x = 0; x != 10; x++)
	{
		j[x] = ('a' + x);
		if (x == 9)
			j[x] = 0;
	}
	c[49] = 24;
	ft_bzero(&c, 50);
	ft_puts("no\n");
	printf("%d\n", (int)c[49]);
	ft_strcat(e, d);
	printf("%s\n", e);
	for (int i = 0; f[i]; i++)
	{
		if (ft_isalpha(f[i]))
			printf("%c", f[i]);
	}
	printf("\n");
	for (int i = 0; f[i]; i++)
	{
		if (ft_isdigit(f[i]))
			printf("%c", f[i]);
	}
	printf("\n");
	for (int i = 0; f[i]; i++)
	{
		if (ft_isalnum(f[i]))
			printf("%c", f[i]);
	}
	printf("\n");
	for (int i = 0; f[i]; i++)
	{
		if (ft_isascii(f[i]))
			printf("%c", f[i]);
	}
	printf("\n");
	if (ft_isascii(128))
		printf("PROBLEM\n");
	ft_memcpy(g, f, 50);
	printf("%s\n", g);
	ft_memset(f, 0, ft_strlen(f) - 1);
	printf("done\n");
	printf("%d\n", (int)f[0]);
	printf("(%s)\n", j);
	h = ft_strdup(j);
	printf("HELLO\n");
	printf("HELLO\n");
	printf("[%s]\n", h);
	free(h);
	fd = open(argv[1], O_RDONLY);
	if (fd > 0)
		ft_cat(fd);
}
