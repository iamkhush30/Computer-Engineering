#include<stdio.h>
void main()
{
    int a,b,c;
    printf("Enter value of a:");
    scanf("%d",&a);
    printf("Enter value of b:");
    scanf("%d",&b);
    printf("Enter value of c:");
    scanf("%d",&c);
    if(a > c)
    {
        if(a > b)
        {
            printf("%d is max",a);
        }
        else
        {
            printf("%d is max",b);
        }
    }
    else
    {
        printf("%d is max",c);
    }
}
