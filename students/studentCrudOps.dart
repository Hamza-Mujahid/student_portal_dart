import 'dart:io';
import '../db/db.dart';
// student cruds

List createStudent({
  required String name,
  required String email,
  required String password,
  required String course,
  required List studentsData,
}) {
  Map<String, dynamic> newStudent = {
    "id": studentsData.length,
    "name": name,
    "email": email,
    "password": password,
    "course": course,
  };
  studentsData.add(newStudent);
  print(studentsData);
  return studentsData;
}

Map<dynamic, dynamic>? getStudentById(int id, List studentsData) {
  for (var student in studentsData) {
    if (student["id"] == id) {
      student.forEach((key, value) {
        print('$key: $value');
      });
      return student;
    }
  }
  return null;
}

void updateStudentData(int id) {
  Map<dynamic, dynamic>? foundData = getStudentById(id, studentsData);
  if (foundData == null) {
    print("Student not found!");
    return;
  }

  print("Enter Student Name:");
  String? name = stdin.readLineSync();
  print("Enter Student Email:");
  String? email = stdin.readLineSync();
  print("Set Student Password:");
  String? password = stdin.readLineSync();
  print("What course is the student going to join?");
  String? course = stdin.readLineSync();

  // Update the student data
  if (name != null && name.isNotEmpty) {
    foundData["name"] = name;
  }
  if (email != null && email.isNotEmpty) {
    foundData["email"] = email;
  }
  if (password != null && password.isNotEmpty) {
    foundData["password"] = password;
  }
  if (course != null && course.isNotEmpty) {
    foundData["course"] = course;
  }
  print(foundData);
  print("Student data updated successfully!");
}

void deleteStudent(int id, List studentsData) {
  studentsData.removeWhere((student) => student["roll"] == id);
}
