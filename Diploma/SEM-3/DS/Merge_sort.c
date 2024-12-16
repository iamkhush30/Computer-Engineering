#include<stdio.h>
void main()
{
	int a1[100],a2[100],a3[100],i,j,k,n1,n2;
	printf("Enter size of a1:");
	scanf("%d",&n1);
	printf("Enter Element:\n");
	for (i = 0; i < n1; i++)
	{
		scanf("%d",&a1[i]);
	}
	printf("Enter size of a2:");
	scanf("%d",&n2);
	printf("Enter Element:\n");
	for (j = 0; j < n2; j++)
	{
		scanf("%d",&a2[j]);
	}
	i=j=k=0;
	while(i < n1 && j < n2)
	{
		if(a1[i] < a2[j])
		{
			a3[k] = a1[i];
			i++;
			k++;
		}
		else if(a1[i] > a2[j])
		{
			a3[k] = a2[j];
			j++;
			k++;
		}
		else
		{
			a3[k] = a1[i];
			i++;
			j++;
			k++;
		}
	}
	if(i < n1)
	{
		while(i < n1)
		{
			a3[k] = a1[i];
			i++;
			k++;	
		}
	}
	else if(j < n2)
	{
		while(j < n2)
		{
			a3[k] = a2[j];
			j++;
			k++;
		}
	}
	printf("sorted array:\n");
	for (k = 0; k < (n1+n2); k++)
	{
		printf("%d\n",a3[k]);
	}
}