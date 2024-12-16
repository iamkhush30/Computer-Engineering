select abs(-12)
select abs(12)
select abs(12.5)
select abs(-12.5)
select abs(12.7)
select abs(-12.7)

/*-----------------------------------------------------------*/

select power(5,6)
select power(8,7)
select power(cast(10 as varchar(max)),50)
select power(9,0)
select power(cast(8 as real),-3)

/*-----------------------------------------------------------*/

select round(20.7386,2);
select round(-20.7386,2);
select round(20.3573,2);
select round(-20.3573,2);
select round(20.5328,2);
select round(-20.5328,2);

/*-----------------------------------------------------------*/

select sqrt(9);
select sqrt(121);
select sqrt(225);
select sqrt(652);
select sqrt(9523);
select sqrt(95471);

/*-----------------------------------------------------------*/

select exp(2);
select exp(3);
select exp(6);
select exp(7);

/*-----------------------------------------------------------*/

select 2514 % 2;
select 65421 % 2;
select 9854712 % 2;
select 1005214 % 2;

/*-----------------------------------------------------------*/

select 6325 % 3;
select 966 % 3;
select 1005 % 3;
select 100008 % 3;

select 6325 % 5;
select 966 % 5;
select 1005 % 5;
select 100008 % 5;

/*-----------------------------------------------------------*/

select ceiling(-8886.3);
select ceiling(8886.3);
select ceiling(-8886.7);
select ceiling(8886.7);
select ceiling(-8886.5);
select ceiling(8886.5);

/*-----------------------------------------------------------*/

select floor(-8886.3);
select floor(8886.3);
select floor(-8886.7);
select floor(8886.7);
select floor(-8886.5);
select floor(8886.5);