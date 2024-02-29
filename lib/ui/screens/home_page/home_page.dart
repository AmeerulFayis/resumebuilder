import 'package:flutter/material.dart';
import 'package:resumebuilder/ui/screens/resume_form_page/resume_form_page.dart';
import 'package:resumebuilder/util/app_constants.dart';

import '../../../util/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:AppColor.kGreen,
        title: const Text("Resume Builder"),
      ),
      body: Container(
        padding: commonPaddingAll30,
        child: Center(
          child: Column(
            children: [

              //create resume button
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResumeForm()));
                },
                child: Container(
                 height: 50,
                  padding: commonPaddingAll10,
                  decoration: BoxDecoration(
                    color: AppColor.kDarkGreen,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("Create a resume",style: TextStyle(color:AppColor.kWhite,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ),
              dividerH20(),
              //view Resumes Button
              InkWell(
                onTap: (){},
                child: Container(
                  height: 50,
                  padding: commonPaddingAll10,
                  decoration: BoxDecoration(
                      color: AppColor.kDarkGreen,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("Resumes",style: TextStyle(color:AppColor.kWhite,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              )

            ],
          ),
        ),
      ),

    );
  }
}
