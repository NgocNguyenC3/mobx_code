// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Counter on CounterBase, Store {
  late final _$valueAtom = Atom(name: 'CounterBase.value', context: context);

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$_value2Atom =
      Atom(name: 'CounterBase._value2', context: context);

  int get value2 {
    _$_value2Atom.reportRead();
    return super._value2;
  }

  @override
  int get _value2 => value2;

  @override
  set _value2(int value) {
    _$_value2Atom.reportWrite(value, super._value2, () {
      super._value2 = value;
    });
  }

  late final _$counterAtom =
      Atom(name: 'CounterBase.counter', context: context);

  @override
  CounterModel get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(CounterModel value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$CounterBaseActionController =
      ActionController(name: 'CounterBase', context: context);

  @override
  void incrementValue() {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.incrementValue');
    try {
      return super.incrementValue();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementValue2() {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.incrementValue2');
    try {
      return super.incrementValue2();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCounter1() {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.changeCounter1');
    try {
      return super.changeCounter1();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCounter2() {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.changeCounter2');
    try {
      return super.changeCounter2();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCounter3() {
    final _$actionInfo = _$CounterBaseActionController.startAction(
        name: 'CounterBase.changeCounter3');
    try {
      return super.changeCounter3();
    } finally {
      _$CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
counter: ${counter}
    ''';
  }
}
