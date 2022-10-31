import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_code/testing/store.dart';

/// Eror: Side effects like changing state are not allowed at this point. Please wrap the code in an "action".
class ObservableTestWithoutAction extends StatelessWidget {
  final count = Observable(0);

  ObservableTestWithoutAction({super.key});

  void incFunc() {
    count.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(builder: (context) => text(count.value.toString())),
            Flexible(
              child: TextButton(
                  onPressed: () {
                    incFunc();
                  },
                  child: text('Inc')),
            )
          ]),
    );
  }
}

Text text(String text) => Text(
      text,
      style: const TextStyle(fontSize: 25),
    );

/// Use runInAction
class ObservableTestAction extends StatelessWidget {
  final count = Observable(0);

  ObservableTestAction({super.key});

  void incFunc() {
    runInAction(() => count.value++);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(builder: (context) => text(count.value.toString())),
            Flexible(
              child: TextButton(
                  onPressed: () {
                    incFunc();
                  },
                  child: text('Inc')),
            )
          ]),
    );
  }
}

/// Using Store, @observable, @readOnly
class ObservableTestWithStore extends StatelessWidget {
  final counter = Counter();

  ObservableTestWithStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(builder: (context) => text(counter.value.toString())),
            Flexible(
              child: TextButton(
                  onPressed: () {
                    counter.incrementValue();
                  },
                  child: text('Inc value')),
            ),
            Observer(builder: (context) => text(counter.value2.toString())),
            Flexible(
              child: TextButton(
                  onPressed: () {
                    counter.incrementValue2();
                  },
                  child: text('Inc value2')),
            ),
          ]),
    );
  }
}

// cause we set @readonly annotation
class ObservableTestWithStoreButChangeDataOutSide extends StatelessWidget {
  final counter = Counter();

  ObservableTestWithStoreButChangeDataOutSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(builder: (context) => text(counter.value.toString())),
            Flexible(
              child: TextButton(
                  onPressed: () {
                    /// It's ok
                    runInAction((() => counter.value++));
                  },
                  child: text('Inc value')),
            ),
            Observer(builder: (context) => text(counter.value2.toString())),
            Flexible(
              child: TextButton(
                  onPressed: () {
                    //cause we set @readonly annotation
                    //runInAction((() => counter.value2++));
                    counter.incrementValue2();
                  },
                  child: text('Inc value2')),
            ),
          ]),
    );
  }
}

class ObservableTestClassWithStore extends StatelessWidget {
  final counter = Counter();

  ObservableTestClassWithStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
                builder: (context) => text(counter.counter.text.toString())),
            Flexible(
              child: TextButton(
                  onPressed: () {
                    counter.changeCounter3();
                  },
                  child: text('Change text')),
            ),
          ]),
    );
  }
}
