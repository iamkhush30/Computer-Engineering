#include<stdio.h>
void main()
{
    int a,b,c,d;
    printf("Enter value of a:");
    scanf("%d",&a);
    printf("Enter value of b:");
    scanf("%d",&b);
    printf("Enter value of c:");
    scanf("%d",&c);
    printf("Enter value of d:");
    scanf("%d",&d);
    if(a > b && a > c && a > d)
    {
        printf("%d is max",a);
    }
    else if(b > a && b > c && b > d)
    {
        printf("%d is max",b);
    }
    else if(c > a && c > b && c> d)
    {
        printf("%d is max",c);
    }
    else
    {
        printf("%d is max",d);
    }
}
