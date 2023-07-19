import './db.dart';

createStudent(
    {required String name,
    required String email,
    required String password,
    required String course}) {
  Map newstudent = {
    "id": studentsData.length,
    "name": name,
    "email": email,
    "password": password,
    "course": course
  };
  studentsData.add(newstudent);
  return studentsData;
}

Map<dynamic, dynamic>? getStudentById(int id) {
  for (var student in studentsData) {
    if (student["roll"] == id) {
      return student;
    }
  }
  return null;
}

void updateStudent(int id, Map<String, dynamic> updatedData) {
  Map<dynamic, dynamic>? student = getStudentById(id);
  if (student != null) {
    student.addAll(updatedData);
  }
}

void deleteStudent(int id) {
  studentsData.removeWhere((student) => student["roll"] == id);
}
