void main() {
  int order = 4;
  print(lookAndSay(order));
}

String lookAndSay(int order) {
  String str = '1';
  while (order > 1) {
    str = las(str);
    order--;
  }
  return str;
}

String las(String str) {
  String result = '';
  int count = 0;

  for (int i = 0; i < str.length; i++) {
    if (i > 0 && str[i] == str[i - 1]) {
      count++;
    } else {
      if (i > 0) {
        result += "$count${str[i - 1]}";
      }
      count = 1;
    }
  }
  result += "$count${str[str.length - 1]}";
  return result;
}
