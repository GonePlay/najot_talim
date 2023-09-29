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

// ---------=-======  Function for checking @gmail ------------------------------
String getUserEmail(String userEmail) {
  do {
    print("                             |---------------------|");
    print("                             |  Enter your email:  |");
    print("                             |---------------------|");
    print("\n");
    print("-----👇");
    userEmail = stdin.readLineSync()!;

    if (userEmail == "jon81824@gmail.com" || userEmail == "alex0021@gmail.com") {
      print(
          "              |-----------------------------------------------|");
      print(
          "              |>>>You have already entered an incorrect date<<|");
      print(
          "              |>>>>>>>>       Please sign in        <<<<<<<<<<|");
      print(
          "              |-----------------------------------------------|");
    }
    if (!userEmail.endsWith("@gmail.com")) {
      print(
          "              |-----------------------------------------------|");
      print(
          "              |          Must end with => @gmail.com          |");
      print(
          "              |-----------------------------------------------|");
    }
    if(userEmail.length < 16){
      print(
          "              |-----------------------------------------------|");
      print(
          "              |              Gmail is too short !             |");
      print(
          "              |  Gmail should be more than 6 characters !     |");
      print(
          "              |-----------------------------------------------|");
    }
  } while (!(userEmail.endsWith("@gmail.com")) || userEmail.length < 16);

  return userEmail;
}
// ----------------------------------------------------------------------------

// ------------ Function for checking password -----------------------------------
String getPassword() {
  return stdin.readLineSync()!;
}
bool isStrongPassword(String password) {
  RegExp lowercaseRegex = RegExp(r'[a-z]');
  RegExp uppercaseRegex = RegExp(r'[A-Z]');
  RegExp digitRegex = RegExp(r'[0-9]');

  if (password.length < 8) {
    return false;
  }

  if (!lowercaseRegex.hasMatch(password) ||
      !uppercaseRegex.hasMatch(password) ||
      !digitRegex.hasMatch(password)) {
    return false;
  }

  return true;
}
// --------------------------------------------------------------------------------

void main() {

  print("                                 |-------------------|");
  print("                                 | ENTER 1 to SIGNUP |");
  print("                                 | ENTER 2 to SIGNIN |");
  print("                                 | ENTER 3 to  EXIT  |");
  print("                                 |-------------------|");
  print("👇 1️⃣  ||  2️⃣  ||  3️⃣ ");
  int number = int.parse(stdin.readLineSync()!);

      while(!(number > 0 && number < 4)){
        print("You entered an invalid value!\nPlease try again!\n");
  number = int.parse(stdin.readLineSync()!);
      }

  if (number == 3) {
    print("                                     _--_          ");
    print("                                _--_ |--| _--_     ");
    print("                                |--| |--| |--| _--_");
    print("                                |--| |--| |--| |--|");
    print("                          _--_  |--| |--| |--| |--|");
    print("                          |   | |-----------------|");
    print("                           |   | ----------------| ");
    print("                             |  ---See you soon--| ");
    print("                               |----------------|  ");
    print("                  |------------------------------------------|");
    print("                  |-----    Thank you to use our app     ----|");
    print("                  |------------------------------------------|");
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
            "              |------------------------------------------------|");
        print(
            "              | Name lenght must be more than 2 and no more 30 |");
        print(
            "              |------------------------------------------------|");
      }
    } while (userName.length < 3 || userName.length > 30);
    print("\n");
    // Input for birthdate.
     String userInput = '';
  DateTime? userDateTime;

  do {
    print("                            |----------------------|");
    print("                          |   Enter your birthdate:  |");
    print("                            |----------------------|");

    print("                            |----------------------|");
    print("                 Enter as |       2023-12-12         |");
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
          "              |         You have entered an incorrect date    |");
      print(
          "              |-----------------------------------------------|");
    }
  } while (userDateTime == null ||
      userDateTime.isBefore(DateTime(1900, 12, 31)) ||
      userDateTime.isAfter(DateTime(2023, 12, 31)));



    // Input for email.

  String userEmail = '';
  userEmail = getUserEmail(userEmail);

    // Input for password
    String userPassword = "";
    
      print("                            |----------------------|");
      print("                            | Enter your password: |");
      print("                            |----------------------|");
      print("\n");
      print("-----🔑-----");

    bool isPasswordValid = false;
  
  while (!isPasswordValid) {
    userPassword = getPassword();
  
    if (isStrongPassword(userPassword)) {
      print('                        -- Password successfully accepted --\n');
      isPasswordValid = true;
    } else {
print("""                            -----------------------------------------
                            |  Incorrect  password!                 |
                            -----------------------------------------
                            | The password must contain             |  
                            | uppercase letters, lowercase letters, |
                            | and numbers, and the password         |
                            | must be at least 8 characters long    |\n""");
    }
  }


    print(
        "                  |-----------------------------------------------|");
    print(
        "                  |------🎉🎉🎉SIGNUP successfully🎉🎉🎉-------|");
    print(
        "                  |-----------------------------------------------|");

    print("YOUR EMAIL $userEmail");
    print("TO LOGOUT PRESS 1\n To exit PREES 2\n");

    int press = int.parse(stdin.readLineSync()!);
    if (press == 1) {
      main();
    }else if(press == 2){
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
  else if (number == 2) {
    // input @gmail
    String userEmail2 = '';
    userEmail2 = getUserEmail(userEmail2);
    // Input for password
    String userPassword ='';
      print("                            |----------------------|");
      print("                            | Enter your password: |");
      print("                            |----------------------|");
      print("\n");
      print("-----🔑-----");

    bool isPasswordValid = false;
  
  while (!isPasswordValid) {
    userPassword = getPassword();
  
    if (isStrongPassword(userPassword)) {
      print('                        -- Password successfully accepted --\n');
      isPasswordValid = true;
    } else {
print("""                            -----------------------------------------
                            |  Incorrect  password!                 |
                            -----------------------------------------
                            | The password must contain             |  
                            | uppercase letters, lowercase letters, |
                            | and numbers, and the password         |
                            | must be at least 8 characters long    |\n""");
    }
  }
    print(
        "                  |-----------------------------------------------|");
    print(
        "                  |------🎉🎉🎉SIGNIN successfully🎉🎉🎉-------|");
    print(
        "                  |-----------------------------------------------|");

    print(" YOUR EMAIL $userEmail2");
    print("TO LOGOUT PRESS 1\n To exit PREES 2\n");

    int press = int.parse(stdin.readLineSync()!);
    if (press == 1) {
      main();
    }else if(press == 2){
      exit(0);
    }
    var human = UPperson(
      email: userEmail2,
      password: userPassword,
    );

    print(human);
  }
}