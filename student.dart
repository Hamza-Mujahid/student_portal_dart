import 'dart:io';
import 'index.dart';
import './db.dart';

void studentLogin() {
  print('Welcome student');
  print('Enter email and password');

  bool loginSuccessful = false;

  while (!loginSuccessful) {
    String sEmail = stdin.readLineSync()!;
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
      print(foundData);
    } else {
      print('Login failed. Incorrect email or password.');
      print('Please enter your email and password again:');
    }
  }
}
