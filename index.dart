import 'dart:async';
import 'dart:io';
import './student.dart';
import './teacher.dart';
import 'admin.dart';

void main() {
  enterProgram();
}

enterProgram() {
  print('-------- Welcom to SMIT --------');
  bool isVisiting = true;
  while (isVisiting) {
    print("are you a teacher or student?");
    print("enter 's' for student and 't' for teacher");
    print("Or enter e for exit");
    String userEnterance = stdin.readLineSync()!;
    if (userEnterance == 's') {
      studentLogin();
      isVisiting = false;
    } else if (userEnterance == 't') {
      teacherLogin();
      isVisiting = false;
    } else if (userEnterance == 'ad') {
      adminLogin();
      isVisiting = false;
    } else if (userEnterance == 'e') {
      isVisiting = false;
    } else {
      print('enter a valid command');
    }
  }
}

bool exitProgram() {
  return false;
}

studentOrTeacherChecker(userEnterance) {
  if (userEnterance == 's') {
    studentLogin();
  } else if (userEnterance == 't') {
    teacherLogin();
  }
}
