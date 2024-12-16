#include<stdio.h>
void copy(char[],char[]);
void main()
{
	char a[30],b[30];
	printf("enter a :");
	gets(a);
	copy(a,b);
	printf("b = ");
	puts(b);
}
void copy(char *s1,char *s2)
{
	while(*s1!='\0')
	{
		*s2=*s1;
		s1++;
		s2++;
	}
	*s2='\0';
}
