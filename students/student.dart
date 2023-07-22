import 'dart:io';
import '../db/db.dart';

void studentLogin() {
  print('Welcome student');

  bool loginSuccessful = false;

  while (!loginSuccessful) {
    print('Enter email');
    String sEmail = stdin.readLineSync()!;
    print('Enter password');
    String sPassword = stdin.readLineSync()!;
    Map foundData = {};

    for (var st in studentsData) {
      if (sEmail == st["email"] && sPassword == st["password"]) {
        loginSuccessful = true;
        foundData = st;
        break;
      }
    }

    if (loginSuccessful) {
      print('Login successful!');
      foundData.forEach((key, value) {
        print('$key: $value');
      });
    } else {
      print('Login failed. Incorrect email or password.');
      print('Please enter your email and password again:');
    }
  }
}
