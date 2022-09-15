abstract class QuackBehavior {
  void quack();
}

class Quack implements QuackBehavior {
  @override
  void quack() {
    print('quack');
  }
}

class MuteQuack implements QuackBehavior {
  @override
  void quack() {
    print('<< silence >>');
  }
}

class Squeak implements QuackBehavior {
  @override
  void quack() {
    print('squeak');
  }
}
