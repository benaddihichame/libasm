#ifndef LIBASM_H
# define LIBASM_H

# include <stddef.h>
# include <unistd.h>
# include <stdio.h>
# include <stdlib.h>
# include <string.h>

size_t	ft_strlen(const char *str);
 
char	*ft_strcpy(char *dest, const char *src);

int		ft_strcmp(const char *s1, const char *s2);

char	*ft_strdup(const char *str);

ssize_t	ft_read(int fd, void *buf, size_t count);

#endif
