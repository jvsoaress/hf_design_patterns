import 'fly_behavior.dart';
import 'quack_behavior.dart';

abstract class Duck {
  late FlyBehavior flyBehavior;
  late QuackBehavior quackBehavior;

  void display();

  void performFly() {
    flyBehavior.fly();
  }

  void performQuack() {
    quackBehavior.quack();
  }

  void swim() {
    print('all ducks float, even decoys!');
  }

  void setFlyBehavior(FlyBehavior fb) {
    flyBehavior = fb;
  }

  void setQuackBehavior(QuackBehavior qb) {
    quackBehavior = qb;
  }
}
