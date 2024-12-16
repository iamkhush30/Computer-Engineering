#include<stdio.h>
void main()
{
    int a,count=0;
    printf("Enter number:");
    scanf("%d",&a);
    while(a != 0)
    {
        a = a/10;
        count++;
    }
    printf("%d is lengh of %d",count,a);
}
