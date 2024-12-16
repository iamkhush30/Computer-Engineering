#include<stdio.h>
#include<conio.h>
void binary_search(int[],int,int);
void main()
{
	int a[20],n,s,i,j,swap;
	clrscr();
	printf("enter size of array :");
	scanf("%d",&n);
	printf("enter elements :");
	for(i=0 ; i<n ; i++)
	{
		scanf("%d",&a[i]);
	}
	printf("enter number to search :");
	scanf("%d",&s);
	for (i = 0; i < n; i++)
	{
		for(j = i + 1; j < n - 1; j++)
		{
			if (a[i] > a[j])
			{
				swap = a[i];
				a[i] = a[j];
				a[j] = swap;
			}
		}
	}
	binary_search(a,n,s);
	getch();
}
void binary_search(int a[],int n,int s)
{
	int flag=1;
	int low=0,high=n-1,mid;
	while(low<=high)
	{
		mid=(low+high)  ;
		if(s<a[mid])
		{
			high=mid-1;
		}
		else if(s>a[mid])
		{
			low=mid+1;
		}
		else if(s==a[mid])
		{
			printf("search is successful");
			printf("search value :%d at location:%d",s,mid+1);
			flag=0;
			break;
		}
	}
	if(flag==1)
	{
		printf("search is unsuccessful");
	}
}