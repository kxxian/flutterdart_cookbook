void main(List<String> args) {
  printGreetingPostional('Rich');
  printGreetingPostional('Rich', 'Rose');
}

printGreetingPostional(String personName, [String? personSurname]) {
  print(personName);
  if (personSurname != null) {
    print(personSurname);
  }
}
