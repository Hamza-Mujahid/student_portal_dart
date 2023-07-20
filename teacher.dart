// import 'dart:io';
// import 'index.dart';
// import './db.dart';
// import 'studentCrudOps.dart';

// Map teacher = {};

// teacherLogin() {
//   print('welcome Teacher');
//   print('Enter email and password');

//   bool loginSuccessful = false;

//   while (!loginSuccessful) {
//     String tEmail = stdin.readLineSync()!;
//     String tPassword = stdin.readLineSync()!;
//     for (Map th in teachersData) {
//       if (tEmail == th["email"] && tPassword == th["password"]) {
//         loginSuccessful = true;
//         teacher = th;
//       }
//     }

//     if (loginSuccessful) {
//       print('Login successful!');

//       teacherFunction();
//     } else {
//       print('Login failed. Incorrect email or password.');
//       print('Please enter your email and password again:');
//     }
//   }
// }

// teacherFunction() {
//   bool teacherWorking = true;
//   while (teacherWorking) {
//     print('Enter "add" to add a new student');
//     print('Enter "get" to get a student data using their id');
//     print('Enter "update" to update a student\'s data');
//     print('Enter "exit" to stop');
//     String input = stdin.readLineSync()!;
//     if (input == 'add') {
//       print("Enter Student Name:");
//       String name = stdin.readLineSync()!;
//       print("Enter Student Email:");
//       String email = stdin.readLineSync()!;
//       print("Set Student Password:");
//       String password = stdin.readLineSync()!;
//       print("What course is the student going to join?");
//       String course = stdin.readLineSync()!;
//       createStudent(
//         name: name,
//         email: email,
//         password: password,
//         course: course,
//         studentsData: studentsData,
//       );
//       getStudentById(studentsData.length, studentsData)
//       print("Student added successfully!");
//     } else if (input == 'get') {
//       // function 
//     } else if (input == 'update') {
//       // Implement code to update a student's data (not shown in the provided code).
//       // You can prompt for the student's id, select the student from studentsData,
//       // and then update the relevant fields.
//     } else if (input == 'exit') {
//       teacherWorking = false;
//       print("Exiting teacher function.");
//     } else {
//       print("Invalid input. Try again.");
//     }
//   }
// }
