import 'dart:io';
import 'admin/admin.dart';
import 'students/student.dart';
import 'teachers/teacher.dart';

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
