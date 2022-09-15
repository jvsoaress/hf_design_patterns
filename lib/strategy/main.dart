import 'src/duck.dart';
import 'src/fly_behavior.dart';
import 'src/mallard_duck.dart';
import 'src/model_duck.dart';

void main() {
  Duck mallard = MallardDuck();
  mallard.performQuack();
  mallard.performFly();

  Duck model = ModelDuck();
  model.performFly();
  model.setFlyBehavior(FlyRocketPowered());
  model.performFly();
}
