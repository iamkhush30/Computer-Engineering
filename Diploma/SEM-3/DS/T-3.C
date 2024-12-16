#include<stdio.h>
#include<conio.h>
void deletion();
void main()
{
	clrscr();
	deletion();
	getch();
}
void deletion()
{
	int a[10],n,p,i;
	printf("Enter size of array:");
	scanf("%d",&n);
	printf("Enter element:\n");
	for(i=0;i<n;i++)
	{
		scanf("%d",&a[i]);
	}
	printf("Position:");
	scanf("%d",&p);
	for(i=p-1;i<n-1;i++)
	{
		a[i] = a[i+1];
	}
	printf("New Array:\n");
	for(i=0;i<n-1;i++)
	{
		printf("%d\n",a[i]);
	}
}