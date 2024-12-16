#include<stdio.h>

int front = -1,rear = -1, s[100];

void push(int);
void pop();
void display();
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
				pop();
				break;
			
			case 3:
				display();
				break;
			
			case 4:
				break;
		}
	}while(choise!=4);
	
}
void push(int n)
{
	int x;
	if(rear==n-1)
	{
		printf("\nQueue is overflow\n");
	}
	else
	{
		printf("\nEnter new element:");
		scanf("%d",&x);
		if(front==-1)
		{
			front = 0,rear = 0;
		}
		else
		{
			rear++;
		}
		s[rear] = x;
		
	}
}

void pop()
{
	int a;
	if(front == -1 )
	{
		printf("\nQueue is underflow\n");
	}
	else
	{
		printf("\nFront = %d",front);
		printf("\nPoped value :%d",s[front]);
		if(front==rear)
		{
			front=rear=-1;
		}
		else
		{
			front++;
		}
	}
}

void display()
{
	int i;
	if(front == -1)
	{
		printf("\nQueue is underflow\n");
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
