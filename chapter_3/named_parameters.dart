void main(List<String> args) {
  printGreetingNamed();
  printGreetingNamed(clientId: 002);
  printGreetingNamed(personName: 'Rich');
  printGreetingNamed(
    personName: 'Mary',
    clientId: 001,
  );
}

void printGreetingNamed({
  String personName = 'Stranger',
  int clientId = 999,
}) {
  if (personName == 'Stranger') {
    print('Employee: $clientId $personName danger');
  } else {
    print('Employee: $clientId $personName');
  }
}
