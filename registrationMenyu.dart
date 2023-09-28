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
    print("                             |  ---------BYE-----| ");
    print("                               |----------------|  ");
    exit(0);
  }

  if (number == 1) {
    // Input for name.
    print("\n");
    print("                                |--------------------|");
    print("                                |  Enter your name:  |");
    print("                                |--------------------|");

    print("\n");
    print("👇");
    String userName = stdin.readLineSync()!;
    print("\n");
    // Input for birthdate.
    print("                              |------------------------|");
    print("                              |  Enter your birthdate  |:");
    print("                              |------------------------|");
    print("\n");
    print("👇");
    String userInput = stdin.readLineSync()!;
    DateTime userDateTime = DateTime.tryParse(userInput)!;

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
            "              |>>>>>>>>Siz registratsiya bo'lgansiz<<<<<<<<<<<|");
        print(
            "              |>>>>>>>>SIGNIN QILISHINGIZNI SO'RAYMIZ<<<<<<<<<|");
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
    } while (!userEmail.endsWith("@gmail.com"));

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
            "              |   Parolingiz 8 tadan ko'proq bo'lishi kerak   |");
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
  }

  if (number == 2) {
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
  }
  if (number == 3) {
    print("                  |------------------------------------------|");
    print("                  |-------⛔⛔⛔YOU CAN NOT LOGOUT⛔⛔⛔-------|");
    print("                  |----------FIRST YOU HAVE TO SIGNIN--------|");
    print("                  |------------------------------------------|");
  }
}