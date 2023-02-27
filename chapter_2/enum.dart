enum Day { sun, mon, tue }

void main(List<String> args) {
  // print(Day.values);

  // printing enum reference at index zero:
  // print('${Day.values[0]}');

  // printin enum using values.byName
  print(Day.values.byName('sun'));
}
