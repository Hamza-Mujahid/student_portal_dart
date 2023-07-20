// data;

import 'dart:io';

List<Map> studentsData = [
  {
    "id": 1,
    "name": "Muhammd Hamza",
    "course": "Flutter",
    "attendance": "regular",
    "email": "hamza@gmail.com",
    "password": "123456"
  },
  {
    "id": 2,
    "name": "Muhammd Faiz",
    "course": "Flutter",
    "attendance": "regular",
    "email": "email.@gmail.com",
    "password": "123456"
  },
  {
    "id": 3,
    "name": "Taha",
    "course": "javascript",
    "attendance": "regular",
    "email": "email.@gmail.com",
    "password": "123456"
  },
  {
    "id": 4,
    "name": "danish",
    "course": "Flutter",
    "attendance": "regular",
    "email": "email.@gmail.com",
    "password": "123456"
  },
  {
    "id": 5,
    "name": "Owais",
    "course": "javascript",
    "attendance": "regular",
    "email": "email.@gmail.com",
    "password": "123456"
  },
];

List<Map> teachersData = [
  {
    "id": 1,
    "name": "Bilal Rehman",
    "email": "bilal@flutter.com",
    "password": "123456",
    "subjects": ["flutter", "dart", "python", "djanjo", "fLask"],
    "course": "flutter"
  },
  {
    "id": 2,
    "name": "Ishaq Bhojani",
    "email": "ishaq@js.com",
    "password": "123456",
    "subjects": [
      "html",
      "css",
      "javascript",
      "react",
      "node",
      "express",
      "mongodb"
    ],
    "course": "regular"
  },
];

void main() {
  enterProgram();
}

admin() {}
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
    } else {
      print('Login failed. Incorrect email or password.');
      print('Please enter your email and password again:');
    }
  }
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

Map<String, dynamic>? getStudentById(int id, List studentsData) {
  for (var student in studentsData) {
    if (student["roll"] == id) {
      student.forEach((key, value) {
        print('$key: $value');
      });
      return Map<String, dynamic>.from(
          student); // Convert the map to the correct type
    }
  }
  return null;
}

void updateStudentData(int id) {
  Map<String, dynamic>? foundData = getStudentById(id, studentsData);
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

// teacher cruds

List createteacher(
    {required String name,
    required String email,
    required String password,
    required List course}) {
  Map newteacher = {
    "id": teachersData.length,
    "name": name,
    "email": email,
    "password": password,
    "course": course
  };
  teachersData.add(newteacher);
  print(teachersData);
  return teachersData;
}

Map<dynamic, dynamic>? getteacherById(int id) {
  for (var teacher in teachersData) {
    if (teacher["id"] == id) {
      return teacher;
    }
  }
  return null;
}

void updateteacher(int id, Map<String, dynamic> updatedData) {
  Map<dynamic, dynamic>? teacher = getteacherById(id);
  if (teacher != null) {
    teacher.addAll(updatedData);
  }
}

void deleteteacher(int id) {
  teachersData.removeWhere((teacher) => teacher["id"] == id);
}

// Teacher

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
    print('Enter "add" to add a new student');
    print('Enter "get" to get a student data using their id');
    print('Enter "update" to update a student\'s data');
    print('Enter "exit" to stop');
    String input = stdin.readLineSync()!;
    if (input == 'add') {
      print("Enter Student Name:");
      String name = stdin.readLineSync()!;
      print("Enter Student Email:");
      String email = stdin.readLineSync()!;
      print("Set Student Password:");
      String password = stdin.readLineSync()!;
      print("What course is the student going to join?");
      String course = stdin.readLineSync()!;
      createStudent(
        name: name,
        email: email,
        password: password,
        course: course,
        studentsData: studentsData,
      );
      getStudentById(studentsData.length, studentsData);
      print("Student added successfully!");
    } else if (input == 'get') {
      int id = int.parse(stdin.readLineSync()!);
      Map<String, dynamic>? foundData = getStudentById(id, studentsData);

      foundData?.forEach((key, value) {
        print('$key: $value');
      });
    } else if (input == 'update') {
      int id = int.parse(stdin.readLineSync()!);
      updateStudentData(id);
    } else if (input == 'exit') {
      teacherWorking = false;
      print("Exiting teacher function.");
    } else {
      print("Invalid input. Try again.");
    }
  }
}

// student

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
