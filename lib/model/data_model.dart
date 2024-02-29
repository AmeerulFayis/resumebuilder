


import 'package:hive/hive.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1)
class ResumeModel{

  @HiveField(0)
   int? id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String jobRole;

  @HiveField(3)
  final String email;

  @HiveField(4)
  final String phoneNumber;

  @HiveField(5)
  final String linkedin;

  @HiveField(6)
  final String summary;
  ResumeModel(
      {
        required this.name,
        required this.jobRole,
        required this.email,
        required  this.phoneNumber,
        required this.linkedin,
        required this.summary,
      this.id
      });
}