import 'dart:async';

import 'package:flutter/material.dart';
import 'package:laundry_app/onboading.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  @override
  void initState() {
        super.initState();
        Timer(Duration(seconds: 4),()=> Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) =>
        onboading()), (Route<dynamic> route) => false));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Color(0xffE7FCFB).withOpacity(0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png',height: 100.0,),
            SizedBox(height: 10,),
            SpinKitChasingDots(
              color:Color(0xff02A7A0),
              size: 40.0,
            )
          ],
        ),
      ),
    );
  }
}
