#include<stdio.h>
int push(int[],int,int,int);
int pop(int[],int,int);
void display(int[],int);
int TOP=-1;
void main()
{
	int a[50],choice,x,n;
	printf("Enter capacity of stack ");
	scanf("%d",&n);
	do
	{
		printf("\nPress 1 for PUSH operation");
		printf("\nPress 2 for POP operation");
		printf("\nPress 3 for DISPLAY operation");
		printf("\nPress 4 for EXIT");
		printf("\nEnter your choice ");
		scanf("%d",&choice);
		switch(choice)
		{
			case 1 :
				printf("Enter a value to insert ");
				scanf("%d",&x);
				TOP=push(a,TOP,x,n);
				break;
			case 2 :
				TOP=pop(a,TOP,x);
				break;
			case 3 :
				display(a,TOP);
				break;
			case 4 :
				exit(0);
				break;
			default :
				printf("Invalid choice");
		}
	}while(choice);
}
int push(int a[],int TOP,int x,int n)
{
	if(TOP>=n-1)        
 	{
		 printf("\nStack Overflow");    

 	}
 	else
 	{
		TOP++;         
		a[TOP]=x;	
	}
	return(TOP);
}
int pop(int a[],int TOP,int x)
{
	if(TOP<=-1)
 	{
 		printf("\nStack Underflow");
 	}
	else
 	{
 		x=a[TOP];
 		TOP=TOP-1;
 		printf("\n stack :");
 		printf("%d",x);
 	}
 	return(TOP);
}
void display(int a[],int TOP)
{
	int i;
	if(TOP<0)
	{
		printf("\nStack is empty");
	}
	else
	{
		printf("\nData of stack");
		for(i=TOP;i>=0;i--)
		{
			printf("%d\n",a[i]);
		}
	
	}
}
