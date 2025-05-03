void main() {
  String str1 = '1422';
  String str2 = 'LKMM';
  print(checkIsomophic(str1, str2));
}

bool checkIsomophic(String str1, String str2) {
  Map<String, String> map = {};
  if (str1.length == str2.length) {
    for (var i = 0; i < str1.length; i++) {
      if (!map.containsKey(str1[i])) {
        if (map.containsValue(str2[i])) {
          return false;
        }
        map[str1[i]] = str2[i];
      } else if (map[str1[i]] != str2[i]) {
        return false;
      }
    }
  } else {
    return false;
  }
  return true;
}
