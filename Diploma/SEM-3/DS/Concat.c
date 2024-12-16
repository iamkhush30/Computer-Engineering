#include<stdio.h>
void cat(char[],char[],char[]);
void main()
{
	char a[30],b[30],c[30];
	printf("enter a :");
	gets(a);
	printf("enter b :");
	gets(b);
	cat(a,b,c);
	printf("c = ");
	puts(c);
}

void cat(char *s1,char *s2,char *s3)
{
	while(*s1!='\0')
	{
		*s3=*s1;
		s1++;
		s3++;
	}
	while(*s2!='\0')
	{
		*s3=*s2;
		s2++;
		s3++;
	}
	*s3='\0';
}
