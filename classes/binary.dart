import 'dart:math';

class Binary {
  static bin(int a) {
    List<int> binaryList = [];
    int num = a;
    while (num != 0) {
      binaryList.add(num % 2);
      num ~/= 2;
    }
    String bin = binaryList.reversed.join('');
    num = 0;
    int n = bin.length - 1;
    for (var i = 0; i < bin.length; i++) {
      int bit = int.tryParse(bin[i])!;
      num += bit * pow(2, n).toInt();
      n--;
    }
    print(bin);
    print(num);
  }
}
