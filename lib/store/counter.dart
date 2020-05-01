import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = CounterStoreBase with _$Counter;

abstract class CounterStoreBase with Store {
  @observable
  int count = 0;

  @action
  void incrementCount() => this.count++;
}

final CounterStore = Counter();
