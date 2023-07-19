import 'dart:io';

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
