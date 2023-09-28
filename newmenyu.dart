import 'dart:io';

class UPperson {
  late String email;
  late String password;
  UPperson({
    required this.email,
    required this.password,
  });

  String allData() {
    return "UPperson";
  }
  @override
  String toString() => "UPperson($email,$password)";
}

class Person {
  late String name;
  late DateTime birthdate;
  late String email;
  late String password;
  Person({
    required this.name,
    required this.birthdate,
    required this.email,
    required this.password,
  });

  String allData() {
    return "Person";
  }

  @override
  String toString() => "Person($name,$birthdate,$email,$password)";
}

void main() {
  print("                                 |--------------------|");
  print("                                 | ENTER 1 for SIGNUP |");
  print("                                 | ENTER 2 for SIGNIN |");
  print("                                 | ENTER 3 FOR LOGOUT |");
  print("                                 | ENTER 4 FOR  EXIT  |");
  print("                                 |--------------------|");
  print("👇 1️⃣  ||  2️⃣  ||  3️⃣  ||  4️⃣  ");
  int number = int.parse(stdin.readLineSync()!);

  if (number == 4) {
    print("                                     _--_          ");
    print("                                _--_ |--| _--_     ");
    print("                                |--| |--| |--| _--_");
    print("                                |--| |--| |--| |--|");
    print("                          _--_  |--| |--| |--| |--|");
    print("                          |   | |-----------------|");
    print("                           |   | ----------------| ");
    print("                             |  ---------BUY-----| ");
    print("                               |----------------|  ");
    exit(0);
  }else if (number == 1) {
    // Input for name.
    String userName = '';
    do {
      print("                            |----------------------|");
      print("                            |    Enter your NAME:  |");
      print("                            |----------------------|");
      print("\n");
      print("-----👇-----");
      userName = stdin.readLineSync()!;

      if (userName.length < 3 || userName.length > 30) {
        print(
            "              |-----------------------------------------------|");
        print(
            "              |     ISMINGIZ 8'tadan koproq bo'lishi kerak    |");
        print(
            "              |-----------------------------------------------|");
      }
    } while (userName.length < 8 && userName.length < 30);
    print("\n");
    // Input for birthdate.
     String userInput = '';
  DateTime? userDateTime;

  do {
    print("                            |----------------------|");
    print("                          |   Enter your birthdate:  |");
    print("                            |----------------------|");

    print("                            |----------------------|");
    print("      ESLATMA             |       2023-12-12         |");
    print("                            |----------------------|");
    print("\n");
    print("-----👇-----");
    userInput = stdin.readLineSync()!;

    userDateTime = DateTime.tryParse(userInput);

    if (userDateTime == null ||
        userDateTime.isBefore(DateTime(1900, 1, 1)) ||
        userDateTime.isAfter(DateTime(2023, 12, 31))) {
      print(
          "              |-----------------------------------------------|");
      print(
          "              |            NOTO'G'RI SANA KIRDINGIZ            |");
      print(
          "              |-----------------------------------------------|");
    }
  } while (userDateTime == null ||
      userDateTime.isBefore(DateTime(1900, 12, 31)) ||
      userDateTime.isAfter(DateTime(2023, 12, 31)));



    // Input for email.

    String userEmail = '';

    do {
      print("                             |---------------------|");
      print("                             |  Enter your email:  |");
      print("                             |---------------------|");
      print("\n");
      print("-----👇");
      userEmail = stdin.readLineSync() ?? '';

      if (userEmail == "jon81824@gmail.com" ||
          userEmail == "alex0021@gmail.com") {
        print(
            "              |-----------------------------------------------|");
        print(
            "              |>>>>>>>>>Siz registratsiya bolgansiz<<<<<<<<<<<|");
        print(
            "              |>>>>>>>>SIGNIN QILISHINGIZNI SORAYMIZ<<<<<<<<<<|");
        print(
            "              |-----------------------------------------------|");
      }
      if (!userEmail.endsWith("@gmail.com")) {
        print(
            "              |-----------------------------------------------|");
        print(
            "              |       @gmail.com => bilan tugashi shart       |");
        print(
            "              |-----------------------------------------------|");
      }
    } while (!userEmail.endsWith("@gmail.com") && userEmail.length > 10);

    // Input for password
    String userPassword = "";
    do {
      print("                            |----------------------|");
      print("                            | Enter your password: |");
      print("                            |----------------------|");
      print("\n");
      print("-----🔑-----");
      userPassword = stdin.readLineSync()!;

      if (userPassword.length < 8) {
        print(
            "              |-----------------------------------------------|");
        print(
            "              |   Parolingiz 8'tadan koproq bo'lishi kerak    |");
        print(
            "              |-----------------------------------------------|");
      }
    } while (userPassword.length < 8);
    print(
        "                  |-----------------------------------------------|");
    print(
        "                  |---------🎉🎉🎉SIGNUP successfully🎉🎉🎉---------|");
    print(
        "                  |-----------------------------------------------|");

    print("YOUR EMAIL $userEmail");
    print("IF YOU WANT TO LOGOUT PRESS 1");

    int press = int.parse(stdin.readLineSync()!);
    if (press == 1) {
      exit(0);
    }

    var human = Person(
      name: userName,
      birthdate: userDateTime,
      email: userEmail,
      password: userPassword,
    );

    print(human);
  }else if (number == 2) {
    String userEmail2 = '';

    do {
      print("                            |---------------------|");
      print("                            |  Enter your email:  |");
      print("                            |---------------------|");
      print("\n");
      print("-----👇");
      userEmail2 = stdin.readLineSync() ?? '';

      if(userEmail2 == "jon81824@gmail.com"||userEmail2 == "alex0021@gmail.com"){
        if (!userEmail2.endsWith("@gmail.com")) {
        print(
            "                 |-----------------------------------------------|");
        print(
            "                 |       @gmail.com => bilan tugashi shart       |");
        print(
            "                 |-----------------------------------------------|");
      }
      }
      
    } while (!userEmail2.endsWith("@gmail.com"));

    // Input for password
    String userPassword;
    do {
      print("                            |----------------------|");
      print("                            | Enter your password: |");
      print("                            |----------------------|");
      print("\n");
      print("-----🔑-----");
      userPassword = stdin.readLineSync()!;

      if (userPassword.length < 8) {
        print(
            "              |-----------------------------------------------|");
        print(
            "              |   Parolingiz 8'tadan koproq bo'lishi kerak    |");
        print(
            "              |-----------------------------------------------|");
      }
    } while (userPassword.length < 8);
    print(
        "                  |-----------------------------------------------|");
    print(
        "                  |---------🎉🎉🎉SIGNIN successfully🎉🎉🎉---------|");
    print(
        "                  |-----------------------------------------------|");

    print(" YOUR EMAIL $userEmail2");
    print("IF YOU WANT TO LOGOUT PRESS 1");

    int press = int.parse(stdin.readLineSync()!);
    if (press == 1) {
      exit(0);
    }
    var human = UPperson(
      email: userEmail2,
      password: userPassword,
    );

    print(human);
  }else if (number == 3) {
    print("                  |------------------------------------------|");
    print("                  |-------⛔⛔⛔YOU CAN NOT LOGOUT⛔⛔⛔-------|");
    print("                  |----------FIRST YOU HAVE TO SIGNIN--------|");
    print("                  |------------------------------------------|");
  }
}