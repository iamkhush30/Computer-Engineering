#include<stdio.h>
void Bubble_sort(int [], int);
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
	Bubble_sort(a,n);
}
void Bubble_sort(int a[], int n)
{
	int i,j,swap;
	for(i=1;i<n;i++)
	{
		for(j=0;j<n-i;j++)
		{
			if(a[j]>a[j+1])
			{
				swap = a[j];
				a[j] = a[j+1];
				a[j+1] = swap;
			}
		}
	}
	printf("Sorted array:\n");
	for(i=0;i<n;i++)
	{
		printf("%d\n",a[i]);
	}
}
