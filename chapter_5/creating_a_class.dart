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
