void main(List<String> args) {
  Map<int, String> mapMonths = {0: 'January', 1: 'Febuary', 2: 'March'};
  Map<int, String> moreMonths = {3: 'April', 4: 'May'};

  mapMonths.addEntries(moreMonths.entries);

  mapMonths.forEach((key, value) {
    print('$key: $value');
  });
}
