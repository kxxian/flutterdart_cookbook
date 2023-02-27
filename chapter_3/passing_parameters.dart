void main(List<String> args) {
  getCurrentDateTime(-7);
}

void getCurrentDateTime(int hourDifference) {
  var timeNow = DateTime.now();
  var timeDifference = timeNow.add(
    Duration(hours: hourDifference),
  );

  print('The time now is: $timeNow');
  print('The time minus 7 is: $timeDifference');
}
