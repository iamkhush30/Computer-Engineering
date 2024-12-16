#include<stdio.h>
void CAMP(char[],char[],int, int);
void main()
{
	int i=0,j=0;
	char a[30],b[30];
	printf("enter a :");
	gets(a);
	printf("enter b :");
	gets(b);
	while(a[i]!='\0')
	{
		i++;
	}
	while(b[j]!='\0')
	{
		j++;
	}
	CAMP(a,b,i,j);
}
CAMP(char *s1,char *s2,int i, int j)
{
	int a=0,b=0,flag=0;
	
	if(i!=j)
	{
		printf("both string are not same");
	}
	else
	{
		while(*s1!='\0')
		{
			if(*s1!=*s2)
			{
				printf("both string are not same");
				break;
			}
			else
			{
				flag++;
			    s1++;
			    s2++;
			}
	    }
	}
	
	if(flag==i)
	{
		printf("both string are same");	
	}
			
}
