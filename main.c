#include <stdio.h>
#include <stdlib.h>
extern int ft_strcmp(char *s1, char *s2);
extern int ft_strlen(char *s);
extern int ft_write(int fd, char *s, int len);
extern char *ft_strcpy(char *dest, char *src);
extern char *ft_strdup(char *s);

int main(void)
{
	char *test1 =  "abcda";
	char *test2 = "abcde";
	char *test3;

	test3 = malloc(sizeof(char) * 10);
	printf("%s\n", ft_strdup(test1));
	free(test3);
}
