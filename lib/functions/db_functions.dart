import 'dart:developer';

import 'package:flutter/cupertino.dart';

import '../model/data_model.dart';

ValueNotifier<List<ResumeModel>> resumeListNotifier=ValueNotifier([]);

void addResume(ResumeModel value){
  resumeListNotifier.value.add(value);
  resumeListNotifier.notifyListeners();
log("$value");
}