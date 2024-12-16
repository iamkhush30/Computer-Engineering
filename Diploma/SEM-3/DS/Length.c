#include<stdio.h>
#include<string.h>
int StringLen(char []);
void main()
{
	char a[30];
	int i=0,n;
	printf("\n Enter  the string = ");
	gets(a);
	n = StringLen(a);
	printf("Length = %d",n);
	
}
int StringLen(char *x)
{
	int i=0;
	while(*x != '\0')
	{
		i++;
		x++;
	}
	return(i);
}
