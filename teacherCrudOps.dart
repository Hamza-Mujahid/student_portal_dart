import './db.dart';

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
