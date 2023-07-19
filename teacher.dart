import 'dart:io';
import 'index.dart';
import './db.dart';
import 'studentCrudOps.dart';

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
    String ipnut = stdin.readLineSync()!;
    if (ipnut == 'add') {
      print("enter Student Name");
      String name = stdin.readLineSync()!;
      print("enter Student email");
      String email = stdin.readLineSync()!;
      print("set Student Password");
      String password = stdin.readLineSync()!;
      print("What course is Student gonna be joining?");
      String course = stdin.readLineSync()!;
      createStudent(
          name: name, email: email, password: password, course: course);
    }
  }
}
