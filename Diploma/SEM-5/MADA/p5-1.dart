abstract class Animal
{
  void AnimalSound();
}
class Cat extends Animal
{
  void AnimalSound()
  {
    print("meow...meow");
  }
}
void main()
{
  Cat c = Cat();
  c.AnimalSound();
}