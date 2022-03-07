class DelimetersCalculator {
  static int gcd(int a, int b) {
    if (a > b) {
      return b != 0 ? gcd(b, a % b) : a;
    } else {
      if (a > b) {
        var temp = a;
        a = b;
        b = temp;
      }
      while (b != 0) {
        a %= b;

        var temp = a;
        a = b;
        b = temp;
      }
      return a;
    }
  }

  static lcm(int a, int b) {
    return a / gcd(a, b) * b;
  }

  static cn(int a) {
    List<int> cnList = [];

    int d = 2;

    while (d * d <= a) {
      if (a % d == 0) {
        cnList.add(d);
        a = a ~/ d;
      } else {
        d += 1;
      }
    }
    if (a > 1) {
      cnList.add(a);
    }
    print(cnList.join(' * '));
  }
}
