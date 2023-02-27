const numDays = 7;

class DaysLeftInWeek {
  int currentDay = 0;

  DaysLeftInWeek() {
    currentDay = DateTime.now().weekday.toInt();
  }

  int howManyDaysLeft() {
    return numDays - currentDay;
  }
}

void main(List<String> args) {
  DaysLeftInWeek dayCalculator = DaysLeftInWeek();

  print('Today is day ${dayCalculator.currentDay}');
  print('${dayCalculator.howManyDaysLeft()} day(s) left in the week');
}
