abstract class FlyBehavior {
  void fly();
}

class FlyWithWings implements FlyBehavior {
  @override
  void fly() {
    print('im flying!!');
  }
}

class FlyNoWay implements FlyBehavior {
  @override
  void fly() {
    print('i cant fly');
  }
}

class FlyRocketPowered implements FlyBehavior {
  @override
  void fly() {
    print('im flying with a rocket!');
  }
}
