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
    if (student["roll"] == id) {
      print(student["name"]);
      return student;
    }
  }
  return null;
}

void updateStudent(
    int id, Map<String, dynamic> updatedData, List studentsData) {
  Map<dynamic, dynamic>? student = getStudentById(id, studentsData);
  if (student != null) {
    student.addAll(updatedData);
  }
}

void deleteStudent(int id, List studentsData) {
  studentsData.removeWhere((student) => student["roll"] == id);
}
