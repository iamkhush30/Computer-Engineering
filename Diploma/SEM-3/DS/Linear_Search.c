#include<stdio.h>
#include<conio.h>
void linear_search(int[],int,int);
void main()
{
	int a[20],n,s,i;
	clrscr();
	printf("enter size of array :");
	scanf("%d",&n);
	printf("enter elements :");
	for(i=0 ; i<n ; i++)
	{
		scanf("%d",&a[i]);
	}
	printf("enter number to search");
	scanf("%d",&s);
	linear_search(a,n,s);
	getch();
}

void linear_search(int a[],int n,int s)
{
	int i,flag=0;
	for(i=0 ; i<n ; i++)
	{
		if(a[i]==s)
		{
			flag=1;
			break;
		}
	}
	if(flag==0)
	{
		printf("search is unsuccessful");
	}
	else
	{
		printf("search is successful at location :%d",i+1);
	}
}
