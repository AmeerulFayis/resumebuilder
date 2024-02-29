import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resumebuilder/functions/db_functions.dart';
import 'package:resumebuilder/util/app_color.dart';
import 'package:resumebuilder/util/app_constants.dart';

import '../../../model/data_model.dart';

class Resumes extends StatelessWidget {
  const Resumes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kGreen,
        centerTitle: true,
        title: Text("Resumes"),
      ),
      body: Column(
        children: [
          ValueListenableBuilder(
            valueListenable: resumeListNotifier,
            builder: (BuildContext ctx, List<ResumeModel> resumeList, Widget? child) {
return ListView.builder(
  itemCount:resumeList.length,
  shrinkWrap: true,

  itemBuilder: (BuildContext context, int index) {
    final data=resumeList[index];
    return Container(
      margin: commonPaddingAll10,
      padding: commonPaddingAll10,
      decoration: BoxDecoration(
          color: Colors.blue.shade200,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          Text(data.name),
          Text(data.jobRole),
          Text(data.email),
          Text(data.phoneNumber),
          Text(data.linkedin),
          Text(data.summary),

        ],
      ),

    );
  },);
            },

          )

        ],
      ),
    );
  }
}
