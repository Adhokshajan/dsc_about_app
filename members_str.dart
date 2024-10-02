// ignore_for_file: non_constant_identifier_names, constant_identifier_names


enum Dept{Technical,
Content,
Design,
Marketing,
Management,
Photography,
VideoEditing}
class MembersStr {
  MembersStr({required this.Name,required this.Designation, required this.department});
  final String Name;
  final String Designation;
  final Dept department;

}