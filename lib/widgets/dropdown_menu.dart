class Constants {
  static const String FirstItem = 'Nome';
  static const String SecondItem = 'Turma';
  static const String ThirdItem = 'Conceito';
  static const String FourItem = 'Logins';
  static const String FiveItem = 'Vermelho';

  static const List<String> choices = <String>[
    FirstItem,
    SecondItem,
    ThirdItem,
    FourItem,
    FiveItem
  ];
}

void choiceAction(String choice) {
  if (choice == Constants.FirstItem) {
    print(choice);
  } else if (choice == Constants.SecondItem) {
    print(choice);
  } else if (choice == Constants.ThirdItem) {
    print(choice);
  }
}