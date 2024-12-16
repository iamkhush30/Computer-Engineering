#include<stdio.h>
void Insertion_sort(int [], int);
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
	Insertion_sort(a,n);
}
void Insertion_sort(int a[], int n)
{
	int key,i,j;
	for(i=1;i<n;i++)
	{
		key = a[i];
		j = i;
		while(j>0 && (a[j-1] > key))
		{
			a[j] = a[j-1];
			j--;
		}
		a[j] = key;
	}	
	printf("Sorted array:\n");
	for(i=0;i<n;i++)
	{
		printf("%d\n",a[i]);
	}
}
