import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';


import '../model/data_model.dart';

ValueNotifier<List<ResumeModel>> resumeListNotifier=ValueNotifier([]);
// add function
Future<void>addResume(ResumeModel value)async{
final resumeDB=  await Hive.openBox<ResumeModel>('resume_db');
final _id=await resumeDB.add(value);
value.id=_id;

  resumeListNotifier.value.add(value);
  resumeListNotifier.notifyListeners();
log("$value");
}

// get function
Future<void>getAllResumes()async{
  final resumeDB=  await Hive.openBox<ResumeModel>('resume_db');
  resumeListNotifier.value.clear();
 resumeListNotifier.value.addAll(resumeDB.values);
  resumeListNotifier.notifyListeners();
}

//delete function
Future<void>deleteResume(int id)async{
  final resumeDB=  await Hive.openBox<ResumeModel>('resume_db');
  await resumeDB.delete(id);
  getAllResumes();

}