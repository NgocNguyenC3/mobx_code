// ignore_for_file: public_member_api_docs, sort_constructors_first
class CounterModel {
  String text = '';
  int value = 1;
  CounterModel({
    required this.text,
    required this.value,
  });

  CounterModel copyWith(text) {
    this.text = text;
    return this;
  }
}
