import 'package:mobx/mobx.dart';
import 'package:mobx_code/testing/model/counter.dart';

part 'store.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  int value = 0;

  /// private var, but use @readOnly annotation, we can access it outside store
  @readonly
  int _value2 = 0;

  @observable
  CounterModel counter = CounterModel(text: 'testing', value: 1);

  @action
  void incrementValue() {
    value++;
  }

  @action
  void incrementValue2() {
    _value2++;
  }

  @action
  void changeCounter1() {
    counter.text = 'changeText';
    print(counter.text);
  }

  @action
  void changeCounter2() {
    counter = CounterModel(text: 'Changed', value: 1);
    print(counter.text);
  }

  @action
  void changeCounter3() {
    counter = counter.copyWith('Changeded');
    print(counter.text);
  }
}
