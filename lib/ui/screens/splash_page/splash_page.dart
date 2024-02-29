import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resumebuilder/ui/screens/home_page/home_page.dart';
import 'package:resumebuilder/util/app_constants.dart';

import '../../../util/app_color.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: commonPaddingAll30,
                child: Text("Resume Builder App",style:TextStyle(
                  color: AppColor.kGreen,fontWeight: FontWeight.bold,fontSize: 22
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
