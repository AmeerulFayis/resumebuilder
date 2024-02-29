import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:resumebuilder/functions/db_functions.dart';
import 'package:resumebuilder/model/data_model.dart';
import 'package:resumebuilder/util/app_color.dart';
import 'package:resumebuilder/util/app_constants.dart';

class ResumeForm extends StatefulWidget {
  const ResumeForm({Key? key}) : super(key: key);

  @override
  State<ResumeForm> createState() => _ResumeFormState();
}

class _ResumeFormState extends State<ResumeForm> {
  TextEditingController nameController=TextEditingController();
  TextEditingController jobController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  TextEditingController linkedinController=TextEditingController();
  TextEditingController summaryController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColor.kGreen,
        centerTitle: true,
        title: Text("Fill the form"),
      ),
      body: Container(
        padding: commonPaddingAll10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Name"),
            dividerH5(),
            SizedBox(
              width: screenWidth(context)/1.5,
              height:45,
              child: TextFormField(
                controller: nameController,
                keyboardType: TextInputType.name,
                textInputAction:TextInputAction.next ,
                decoration:InputDecoration(
                  hintText: "enter the full name",
                  border: OutlineInputBorder()
                ),
              ),
            ),
            dividerH10(),
            //Designation
            const Text("Job Role"),
            dividerH5(),
            SizedBox(
              width: screenWidth(context)/1.5,
              height:45,
              child: TextFormField(
                controller: jobController,
                keyboardType: TextInputType.name,
                textInputAction:TextInputAction.next ,
                decoration:InputDecoration(
                    hintText: "eg: python developer",
                    border: OutlineInputBorder()
                ),
              ),
            ),
            dividerH10(),

            //resume
            const Text("Email"),
            dividerH5(),
            SizedBox(
              width: screenWidth(context)/1.5,
              height:45,
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction:TextInputAction.next ,
                decoration:InputDecoration(
                    hintText: "enter the email",
                    border: OutlineInputBorder()
                ),
              ),
            ),
            dividerH10(),
            const Text("Phone Number"),
            dividerH5(),
            SizedBox(
              width: screenWidth(context)/1.5,
              height:45,
              child: TextFormField(
                controller: phoneController,
                textInputAction:TextInputAction.next ,
                keyboardType: TextInputType.number,

                decoration:InputDecoration(
                    hintText: "enter the contact number",
                    border: OutlineInputBorder()
                ),
              ),
            ),
            dividerH10(),
            const Text("Linkedin url"),
            dividerH5(),
            SizedBox(
              width: screenWidth(context)/1.5,
              height:45,
              child: TextFormField(
                controller: linkedinController,
                textInputAction:TextInputAction.next ,
                keyboardType: TextInputType.name,
                decoration:InputDecoration(
                    hintText: "eg :www.linkedin.com/in/john",
                    border: OutlineInputBorder()
                ),
              ),
            ),
            dividerH10(),
            const Text("Summary"),
            dividerH5(),
            SizedBox(
              width: screenWidth(context)/1.5,
              height:100,
              child: TextFormField(
                controller: summaryController,
                textInputAction:TextInputAction.done ,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration:const InputDecoration(
                    hintText: "enter details",
                    border: OutlineInputBorder()
                ),
              ),
            ),
            dividerH10(),
            InkWell(
              onTap: (){
saveResume();
              },
              child: Container(
                height: 50,
                width: screenWidth(context)/2,
               margin: EdgeInsets.only(left: 60),
                decoration: BoxDecoration(
                    color: AppColor.kDarkGreen,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Center(child: Text("Create",style: TextStyle(color:AppColor.kWhite,fontSize: 18,fontWeight: FontWeight.bold),)),
              ),
            ),



          ],
        ),
      ),
    );
  }

  Future<void>saveResume()async{
    final _name=nameController.text.trim();
    final _job=jobController.text.trim();
    final _email=emailController.text.trim();
    final _phone=phoneController.text.trim();
    final _linkedin=linkedinController.text.trim();
    final _summary=summaryController.text.trim();
    if(_name.isEmpty || _job.isEmpty ||_email.isEmpty ||_phone.isEmpty ||_linkedin.isEmpty ||_summary.isEmpty ){
      return;
    }
   // log("$_name $_job $_email $_phone $_linkedin $_summary");
    final _resume=ResumeModel(name: _name, jobRole: _job, email: _email, phoneNumber: _phone, linkedin: _linkedin, summary: _summary);

    addResume(_resume);
  }


}
