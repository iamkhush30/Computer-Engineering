#include<stdio.h>
#include<conio.h>
void traverse();
void main()
{
	clrscr();
	traverse();
	getch();
}
void traverse()
{
	int a[5],i;
	printf("Enter 5 element:\n");
	for(i=0;i<5;i++)
	{
		scanf("%d",&a[i]);
	}
	printf("Entered Array:\n");
	for(i=0;i<5;i++)
	{
		printf("%d\n",a[i]);
	}
}