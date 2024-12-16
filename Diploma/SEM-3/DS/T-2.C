#include<stdio.h>
#include<conio.h>
void insert();
void main()
{
	clrscr();
	insert();
	getch();
}
void insert()
{
	int a[10],n,x,p,i;
	printf("Enter size of array:");
	scanf("%d",&n);
	printf("Enter element:\n");
	for(i=0;i<n;i++)
	{
		scanf("%d",&a[i]);
	}
	printf("Enter new element:");
	scanf("%d",&x);
	printf("Position:");
	scanf("%d",&p);
	for(i=n-1;i>=p-1;i--)
	{
		a[i+1] = a[i];
	}
	a[p] = x;
	printf("New Array:\n");
	for(i=0;i<n+1;i++)
	{
		printf("%d\n",a[i]);
	}
}