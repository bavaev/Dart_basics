class CountWords {
  static count(List<String> listWords) {
    Map<String, dynamic> map = {};
    for (var i = 0; i < listWords.length; i++) {
      if (map.containsKey(listWords[i])) {
        int c = map[listWords[i]];
        c += 1;
        map.update(listWords[i], (value) => c);
      } else {
        map.addAll({listWords[i]: 1});
      }
    }
    print(map);
  }
}
