class Repeat {
  static search(String text) {
    List<int> outList = [];
    Map listNumbers = {
      0: 'zero',
      1: 'one',
      2: 'two',
      3: 'three',
      4: 'four',
      5: 'five',
      6: 'six',
      7: 'seven',
      8: 'eight',
      9: 'nine'
    };
    List<String> listWords = text.split(', ');

    for (var i = 0; i < listWords.length; i++) {
      listNumbers.forEach((key, value) {
        if (listWords[i] == value) {
          if (!outList.contains(key)) {
            outList.add(key);
          }
        }
      });
    }
    print(outList);
  }
}
