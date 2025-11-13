import 'package:extensionx/extensionx.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('xList-Nullable', () {
    test('xIsNull', () {
      List<int>? list;
      expect(list.xIsNull, isTrue);

      List<int>? list1 = [];
      expect(list1.xIsNull, isFalse);
    });

    test('xIsNullOrEmpty', () {
      List<int>? list;
      expect(list.xIsNullOrEmpty, isTrue);

      List<int>? list1 = [];
      expect(list1.xIsNullOrEmpty, isTrue);

      List<int>? list2 = [1, 2, 3];
      expect(list2.xIsNullOrEmpty, isFalse);
    });
  });

  group('xList', () {
    test('xRemoveDuplicates', () {
      final list = [1, 2, 2, 3, 1];
      expect(list.xRemoveDuplicates..sort(), [1, 2, 3]);

      final list1 = ['a', 'b', 'a', 'c', 'b'];
      expect(list1.xRemoveDuplicates..sort(), ['a', 'b', 'c']);

      final list2 = <int>[];
      expect(list2.xRemoveDuplicates, []);

      final list3 = [1, 2, 3];
      expect(list3.xRemoveDuplicates, [1, 2, 3]);
    });
  });
}
