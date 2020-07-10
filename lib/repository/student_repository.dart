import 'package:xms/date/student_date.dart';
import 'package:meta/meta.dart';

class StudentRepository{
  final ListStudentDate apiStudent;

  StudentRepository({@required this.apiStudent}) : assert(apiStudent != null);

  getAll() {
    return apiStudent.getAll();
  }
}