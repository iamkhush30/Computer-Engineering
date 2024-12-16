#include<stdio.h>
int front = -1,rear = -1, s[100];

void push(int);
void pop(int);
void display(int);
void main()
{
	int n,choise,i,x;
	printf("Enter size of queue:");
	scanf("%d",&n);
	
	do{
		printf("\nPress 1 from push");
		printf("\nPress 2 from pop");
		printf("\nPress 3 from Display");
		printf("\nPress 4 from Exit\n");
		printf("\nEnter choise :");
		scanf("%d",&choise);
		
		switch(choise)
		{
			case 1:
				push(n);
				break;
			
			case 2:
				pop(n);
				break;
			
			case 3:
				display(n);
				break;
			
			case 4:
				break;
		}
	}while(choise!=4);
	
}
void push(n)
{
	int x;
	if((front==rear+1) || (front==0 && rear==n-1))
	{
		printf("\nCQueue is overflow\n");
	}
	
	else
	{
		printf("\nEnter new element:");
		scanf("%d",&x);
		if(front==-1 && rear == -1)
		{
			front=rear=0;
			s[rear] = x;
		}
		else if(front != 0 && rear == n-1)
		{
			rear=0;
			s[rear] = x;
		}
		else
		{
			rear++;
			s[rear] = x;
		}
	}
}
void pop(int n)
{
	int x;
	if(front == -1)
	{
		printf("\nQueue is underflow\n");
	}
	x = s[front];
	printf("Poped element : %d",x);
	if(front == rear)
	{
		front=rear=-1;
	}
	else
	{
		if(front == n-1)
		{
			front=0;
		}
		else
		{
			front++;
		}
	}
}
void display(int n)
{
	int i;
	if(front == -1)
	{
		printf("\nQueue is underflow\n");
	}
	else
	{
		if(front>rear)
		{
			for(i=front ; i<n ; i++)
			{
				printf("%d\t",s[i]);
			}
			for(i=0 ; i<=rear ; i++)
			{
				printf("%d\t",s[i]);
			}
			printf("\n");
		}
		else
		{
			for(i = front;i<=rear;i++)
			{
				printf("%d\t",s[i]);
			}
			printf("\n");
		}
	}
}
