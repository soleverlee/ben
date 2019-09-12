import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

class ProtectedValue {
  static final _random = Random.secure();

  final Uint8List _mixed;
  final Uint8List _salt;

  ProtectedValue(this._mixed, this._salt);

  factory ProtectedValue.of(String value) {
    assert(value != null);
    final Uint8List valueBytes = utf8.encode(value) as Uint8List;
    final Uint8List salt = _randomBytes(valueBytes.length);
    return ProtectedValue(_xor(valueBytes, salt), salt);
  }

  Uint8List get binaryValue => _xor(_mixed, _salt);

  String getText() {
    return utf8.decode(binaryValue);
  }

  @override
  bool operator ==(dynamic other) =>
      other is ProtectedValue && other.getText() == getText();

  @override
  int get hashCode => getText().hashCode;

  static Uint8List _randomBytes(int length) {
    return Uint8List.fromList(
        List.generate(length, (i) => _random.nextInt(0xff)));
  }

  static Uint8List _xor(final Uint8List value, final Uint8List salt) {
    assert(value.length == salt.length);
    final Uint8List result = Uint8List(value.length);
    for (int i = 0; i < value.length; i++) result[i] = value[i] ^ salt[i];
    return result;
  }
}
