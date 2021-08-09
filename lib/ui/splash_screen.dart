import 'dart:async';

import 'package:firstapp/constant/AppColors.dart';
import 'package:firstapp/ui/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 10),()=>Navigator.push(context, CupertinoPageRoute(builder: (_)=>LoginScreen())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark_red,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("FishHut",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 44.sp),),
              SizedBox(height: 20.h,),
              CircularProgressIndicator(color: Colors.white,),
            ],
          ),
        ),
      ),
    );
  }
}