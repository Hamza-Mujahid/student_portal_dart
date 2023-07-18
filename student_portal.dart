import 'dart:async';
import 'dart:io';

List<Map> studentsData = [
  {
    "roll": 1,
    "name": "Muhammd Hamza",
    "course": "Flutter",
    "attendance": "regular",
    "email": "email.@gmail.com",
    "password": "123456"
  },
  {
    "roll": 2,
    "name": "Muhammd Hamza",
    "course": "Flutter",
    "attendance": "regular",
    "email": "email.@gmail.com",
    "password": "123456"
  },
  {
    "roll": 3,
    "name": "Muhammd Hamza",
    "course": "Flutter",
    "attendance": "regular",
    "email": "email.@gmail.com",
    "password": "123456"
  },
  {
    "roll": 4,
    "name": "Muhammd Hamza",
    "course": "Flutter",
    "attendance": "regular",
    "email": "email.@gmail.com",
    "password": "123456"
  },
  {
    "roll": 5,
    "name": "Muhammd Hamza",
    "course": "Flutter",
    "attendance": "regular",
    "email": "email.@gmail.com",
    "password": "123456"
  },
];
List<Map> teachersData = [
  {
    "roll": 1,
    "name": "Bilal Rehman",
    "subjects": ["flutter", "dart", "python", "djanjo", "fLask"],
    "course": "flutter"
  },
  {
    "roll": 2,
    "name": "Ishaq Bhojani",
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

void studentLogin() {
  print('Welcome student');
  print('Enter email and password');

  bool loginSuccessful = false;

  while (!loginSuccessful) {
    String sEmail = stdin.readLineSync()!;
    String sPassword = stdin.readLineSync()!;

    for (var st in studentsData) {
      if (sEmail == st["email"] && sPassword == st["password"]) {
        loginSuccessful = true;
        break;
      }
    }

    if (loginSuccessful) {
      print('Login successful!');
    } else {
      print('Login failed. Incorrect email or password.');
      print('Please enter your email and password again:');
    }
  }
}

teacherLogin() {
  print('welcome Teacher');
  print('Enter email and password');

  bool loginSuccessful = false;

  while (!loginSuccessful) {
    String tEmail = stdin.readLineSync()!;
    String tPassword = stdin.readLineSync()!;
    num studenId = 0;
    for (var th in teachersData) {
      if (tEmail == th["email"] && tPassword == th["password"]) {
        loginSuccessful = true;
        studenId = th['id'];
      }
    }

    if (loginSuccessful) {
      print('Login successful!');
      print(studenId);
    } else {
      print('Login failed. Incorrect email or password.');
      print('Please enter your email and password again:');
    }
  }
}
