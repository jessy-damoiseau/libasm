#ifndef LIBASM_H
#define LIBASM_H

#include <errno.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

// mandatory part

size_t  ft_strlen(char const *);
char    *ft_strcpy(char *, char const *);
int     ft_strcmp(char const *, char const *);
size_t  ft_write(int, const void *, size_t);
size_t  ft_read(int, void *, size_t);
char    *ft_strdup(const char *);

// bonus part

#endif