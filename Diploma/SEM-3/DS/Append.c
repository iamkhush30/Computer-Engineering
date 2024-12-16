#include<stdio.h>
#include<string.h>
void appe(char[] , char[]);
void main()
{
	char a[15],b[15];
	printf("\n Enter a : ");
	gets(a);
	printf("\n Enter b : ");
	gets(b);
	appe(a,b);
	printf("String after apppending = ");
	puts(a);
}
void appe(char *s1,char *s2)
{
	while(*s1!='\0')
	{
		s1++;
	}
	while(*s2!='\0')
	{
		*s1=*s2;
		s1++;
		s2++;
	}
	*s2='\0';
}
