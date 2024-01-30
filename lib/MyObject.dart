// ignore_for_file: public_member_api_docs, sort_constructors_first
class MyObject {
  int _value;
  MyObject(this._value);
  int get value => _value;
  set value(newValue) => _value = newValue;

  void increase() {
    _value++;
  }

  void decrease() {
    _value--;
  }

  void square() {
    _value = _value * _value;
  }

  int power(int exponent) {
    //sử dụng giải thuật lặp
    int result = 1;
    for (int i = 1; i <= exponent; i++) {
      result *= value;
    }
    return result;
  }

  int powerV2(int value, int exponent) {
    //sử dụng giải thuật đệ quy
    if (exponent == 0)
      return 1;
    else if (exponent == 1)
      return value;
    else
      return powerV2(value, exponent - 1) * value;
  }
}
