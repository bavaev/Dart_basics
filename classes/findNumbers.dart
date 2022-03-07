class FindNumbers {
  static search(String text) {
    List<String> listWords = text.split(' ');
    List<String> listNumbers = [];

    for (var i = 0; i < listWords.length; i++) {
      if (double.tryParse(listWords[i]) != null) {
        listNumbers.add(listWords[i]);
      }
    }
    print(listNumbers);
  }
}
