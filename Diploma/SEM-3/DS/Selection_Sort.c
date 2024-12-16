#include<stdio.h>
void Selection_sort(int [], int);
void main()
{
	int a[100],n,i;
	printf("Enter size of array:");
	scanf("%d",&n);
	printf("Enter element in array:\n");
	for(i=0;i<n;i++)
	{
		scanf("%d",&a[i]);
	}
	Selection_sort(a,n);
}
void Selection_sort(int a[], int n)
{
	int i,j,swap,min;
	for(i=0;i<n;i++)
	{
		min = i;
		for(j=i+1;j<n;j++)
		{
			if(a[min] > a[j])
			{
				min = j;
			}
		}
		if(min != i)
		{
			swap = a[i];
			a[i] = a[min];
			a[min] = swap;
		}
	}
	printf("Sorted array:\n");
	for(i=0;i<n;i++)
	{
		printf("%d\n",a[i]);
}
}
