void main(List<String> args) {
  Map<int, String> mapMonths = {0: 'January', 1: 'Febuary', 2: 'March'};

  if (mapMonths[4] != null) {
    print('Test 1: Key exists');
  } else {
    print('Test 1: Key not found');
  }

  if (mapMonths.containsKey(1)) {
    print('Test 2: Key exists');
  } else {
    print('Test 2: Key not found');
  }
}
