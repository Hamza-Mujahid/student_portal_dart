import './db.dart';

createStudent(
    {required String name,
    required String email,
    required String password,
    required String course}) {
  Map newStudent = {};
}

Map<dynamic, dynamic>? getStudentById(int id) {
  for (var student in studentsData) {
    if (student["roll"] == id) {
      return student;
    }
  }
  return null; // Return null if the student with the given ID is not found.
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
