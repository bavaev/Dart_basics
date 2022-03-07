class Point {
  int x;
  int y;
  int z;
  Point(this.x, this.y, this.z);

  Point.zero()
      : x = 0,
        y = 0,
        z = 0;

  Point.one()
      : x = 1,
        y = 1,
        z = 1;

  Point.five()
      : x = 5,
        y = 5,
        z = 5;

  Point.ten()
      : x = 10,
        y = 10,
        z = 10;

  Point.hundred()
      : x = 100,
        y = 100,
        z = 100;

  static distanceTo(List<int> anotherPoint) {
    final pointZero = Point.zero();
    final pointOne = Point.zero();
    final pointFive = Point.zero();
    final pointTen = Point.zero();
    final pointHundred = Point.zero();

    var distance = (((anotherPoint[0] - pointZero.x) *
                (anotherPoint[0] - pointZero.x)) +
            ((anotherPoint[1] - pointZero.y) *
                (anotherPoint[1] - pointZero.y)) +
            ((anotherPoint[2] - pointZero.z) * (anotherPoint[2] - pointZero.z)))
        .nth_root(2);
    print(distance);
  }
}

extension Root on num {
  double nth_root(int rootDegree) {
    var num = this;

    //допустимая погрешность
    double eps = 0.001;

    double root = num / rootDegree;
    var rn = num;
    while ((root - rn).abs() >= eps) {
      rn = num;
      for (int i = 1; i < rootDegree; i++) {
        rn = rn / root;
      }
      if (root.isInfinite) {
        print('Степерь не может быть $rootDegree');
        break;
      } else {
        root = 0.5 * (rn + root);
      }
    }
    return root;
  }
}
