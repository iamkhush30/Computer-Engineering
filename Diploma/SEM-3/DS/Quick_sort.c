#include<stdio.h>
void Quick_sort(int [],int ,int);
void main()
{
	int a[100],lb=0,ub,i,j,pivot,swap,x,y	;
	printf("Enter size of array:");
	scanf("%d",&ub);
	printf("Enter Element:\n");
	for (i = 0; i < ub; i++)
	{
		scanf("%d",&a[i]);
	}
	for(i=0;i<ub;i++)
	{
		printf("%d\n",a[i]);
	}
	if(lb<ub)
	{
		i = lb+1;
		j = ub-1;
	}
	pivot = a[lb];
	while(i <= j)
	{
		while(a[i] >= pivot)
			i++;
		while(a[j] < pivot)
			j--;
		if(i < j)
		{
			swap = a[i];
			a[i] = a[j];
			a[j] = swap;
			break;
		}
	}
	swap = pivot;
	pivot = a[j];
	a[j] = swap;

	for(int x=0;x < ub;x++)
	{
		for(y=x+1 ; y < ub; y++)
		{
			if(a[x]>a[y])
			{
				Quick_sort(a,lb,j-1);				
			}
		}
	}

	for(int x=ub ; x > j ; x--)
	{
		for(y=x-1 ; y > j; y--)
		{
			if(a[x]<a[y])
			{
				Quick_sort(a,j+1,ub);				
			}
		}
	}

	for(i=0;i<ub;i++)
	{
		printf("%d\n",a[i]);
	}
}
void Quick_sort(int a[],int n,int m)
{
	int pivot,i,j,swap;
	pivot = a[n];
	while(i <= j)
	{
		while(a[i] >= pivot)
			i++;
		while(a[j] < pivot)
			j--;
		if(i < j)
		{
			swap = a[i];
			a[i] = a[j];
			a[j] = swap;
			break;
		}
	}
	swap = pivot;
	pivot = a[j];
	a[j] = swap;	
}