#include<stdio.h>
void main()
{
    int a,b;
    printf("Enter value of a:");
    scanf("%d",&a);
    printf("Enter value of b:");
    scanf("%d",&b);
    printf("\na + b = %d",a+b);
    printf("\na - b = %d",a-b);
    printf("\na * b = %d",a*b);
    printf("\na / b = %f",(float)a/b);
}
