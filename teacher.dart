import 'dart:io';
import 'index.dart';
import './db.dart';

Map teacher = {};

teacherLogin() {
  print('welcome Teacher');
  print('Enter email and password');

  bool loginSuccessful = false;

  while (!loginSuccessful) {
    String tEmail = stdin.readLineSync()!;
    String tPassword = stdin.readLineSync()!;
    for (Map th in teachersData) {
      if (tEmail == th["email"] && tPassword == th["password"]) {
        loginSuccessful = true;
        teacher = th;
      }
    }

    if (loginSuccessful) {
      print('Login successful!');
      
      teacherFunction();
    } else {
      print('Login failed. Incorrect email or password.');
      print('Please enter your email and password again:');
    }
  }
}

teacherFunction() {
  bool teacherWorking = true;
  while (teacherWorking) {
    print('enter add to add a new student');
    print('enter get to get a student data using his id');
    print("enter update to update a student's data");
    print('enter add to add a new student');
  }
}
