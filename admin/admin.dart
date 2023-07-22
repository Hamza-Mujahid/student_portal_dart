import 'dart:io';

portalManagment() {
  bool adminIsHere = true;
  print('to access teacher data enter t or s for student data');
  while (adminIsHere) {
    
  }
}

adminLogin() {
  bool loginSuccessful = false;

  while (!loginSuccessful) {
    String admin = stdin.readLineSync()!;
    String adminp = stdin.readLineSync()!;

    if (admin == "admin" && adminp == "admin") {
      loginSuccessful = true;
    }

    if (loginSuccessful) {
      print('Login successful!');
      portalManagment();
    } else {
      print('Login failed. Incorrect email or password.');
      print('Please enter your email and password again:');
    }
  }
}
