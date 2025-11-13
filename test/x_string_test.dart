import 'package:extensionx/extensionx.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('xString-Nullable', () {
    test('xIsNull', () {
      String? value;
      expect(value.xIsNull, isTrue);

      String? value1 = '';
      expect(value1.xIsNull, isFalse);
    });

    test('xIsNullOrBlank', () {
      String? value;
      expect(value.xIsNullOrBlank, isTrue);

      String? value1 = '';
      expect(value1.xIsNullOrBlank, isTrue);

      String? value2 = '   ';
      expect(value2.xIsNullOrBlank, isTrue);

      String? value3 = 'hello';
      expect(value3.xIsNullOrBlank, isFalse);

      String? value4 = '  hey  ';
      expect(value4.xIsNullOrBlank, isFalse);
    });
  });

  group('xString', () {
    test('xCapitalize', () {
      expect('hello'.xCapitalize, 'Hello');
      expect('world'.xCapitalize, 'World');
      expect('h'.xCapitalize, 'H');

      expect(''.xCapitalize, '');
    });

    test('xIsEmail', () {
      expect('test@example.com'.xIsEmail, isTrue);
      expect('user.name@domain.co'.xIsEmail, isTrue);

      expect('not-an-email'.xIsEmail, isFalse);
      expect('user@domain'.xIsEmail, isFalse);
      expect('@domain.com'.xIsEmail, isFalse);
    });
  });
}
