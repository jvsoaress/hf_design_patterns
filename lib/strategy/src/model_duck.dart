import 'duck.dart';
import 'fly_behavior.dart';
import 'quack_behavior.dart';

class ModelDuck extends Duck {
  ModelDuck() {
    flyBehavior = FlyNoWay();
    quackBehavior = Quack();
  }

  @override
  void display() {
    print('im a model duck');
  }
}
