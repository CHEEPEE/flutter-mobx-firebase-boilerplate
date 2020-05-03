import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Count {
  final counter;

  Count(this.counter);
}

class Counter = CounterStoreBase with _$Counter;

abstract class CounterStoreBase with Store {
  @observable
  int count = 2;

  final Firestore firestore = Firestore();

  CollectionReference get counter => firestore.collection('counter');

  CounterStoreBase() {
    this.getCounter();
  }

  @action
  void incrementCount() => this.count++;

  @action
  Future<void> addCounter() {
    counter
        .document('count')
        .setData(<String, dynamic>{'counter': this.count + 1});
  }

  @action
  Stream<void> getCounter() {
    counter
        .document('count')
        .snapshots()
        .listen((DocumentSnapshot documentSnapshot) {
      Count data = Count(documentSnapshot.data['counter']);
      this.count = data.counter;
    });
  }
}

final CounterStore = Counter();
