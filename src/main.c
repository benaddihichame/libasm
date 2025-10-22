#include "libasm.h"

int main(void)
{
	char *str = "bonjourjesuispleiunoiwjfeowifej";
	char *sd = "oui";
	
	printf("=== TEST FOR ft_strlen ===\n");
	printf("Long string length: %ld\n", ft_strlen(str));
	printf("Short string length: %ld\n", ft_strlen(sd));
	printf("Empty string length: %ld\n", ft_strlen(""));
	
	printf("\n=== TEST FOR ft_strcpy ===\n");
	char dest1[50];
	char dest2[10];
	char dest3[1];
	
	printf("Copy long string: '%s'\n", ft_strcpy(dest1, str));
	printf("Copy short string: '%s'\n", ft_strcpy(dest2, sd));
	printf("Copy empty string: '%s'\n", ft_strcpy(dest3, ""));
	
	printf("\n=== TEST FOR ft_strcmp ===\n");
	printf("Compare 'abc' vs 'abc': %d\n", ft_strcmp("abc", "abc"));
	printf("Compare 'abc' vs 'abd': %d\n", ft_strcmp("abc", "abd"));
	printf("Compare 'abd' vs 'abc': %d\n", ft_strcmp("abd", "abc"));
	printf("Compare 'hello' vs 'hello world': %d\n", ft_strcmp("hello", "hello world"));
	printf("Compare 'hello world' vs 'hello': %d\n", ft_strcmp("hello world", "hello"));
	printf("Compare empty vs empty: %d\n", ft_strcmp("", ""));
	printf("Compare 'test' vs empty: %d\n", ft_strcmp("test", ""));
	printf("Compare empty vs 'test': %d\n", ft_strcmp("", "test"));

	return 0;
}
