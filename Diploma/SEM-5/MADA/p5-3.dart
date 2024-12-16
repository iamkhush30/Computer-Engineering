class abc
{
  int? x;
  void A()
  {
    x = 10; 
  }

  void B(int Function(int) A)
  {
    print(x);
  }
}
void main()
{
  abc a = abc();
  a.B(a.A);
}