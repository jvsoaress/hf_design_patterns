import 'duck.dart';
import 'fly_behavior.dart';
import 'quack_behavior.dart';

class MallardDuck extends Duck {
  MallardDuck() {
    flyBehavior = FlyWithWings();
    quackBehavior = Quack();
  }

  @override
  void display() {
    print('im a real mallard duck');
  }
}
