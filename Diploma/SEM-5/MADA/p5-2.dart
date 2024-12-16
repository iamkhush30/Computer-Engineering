class Time
{
  int? Hour;
  int? Minute;

  void addition(int h1,int m1,int h2, int m2)
  {
    
    Minute = (m1 + m2) % 60;
    Hour = h1 + h2 + ((m1 + m2) ~/ 60);

    print("Hour = $Hour");
    print("Minute = $Minute");
  }
}
void main()
{
  Time t = Time();

  t.addition(5, 24, 4, 50);
}