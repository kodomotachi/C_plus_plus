#include <stdio.h>
#include <stdlib.h>

int main()
{
	long ret;
	char str;
	char *not_move;
	get(str);
	ret = strtoul(str, &not_move, 16);
	printf("%lld", ret);
	return 0;	
} 
