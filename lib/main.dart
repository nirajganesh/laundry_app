import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/onboading.dart';
import 'package:laundry_app/order_details.dart';
import 'package:laundry_app/otp.dart';
import 'package:laundry_app/pickup_schedule.dart';
import 'package:laundry_app/provider/cart_provider.dart';
import 'package:laundry_app/register.dart';
import 'package:laundry_app/services.dart';
import 'package:laundry_app/splash_screen.dart';
import 'package:laundry_app/success.dart';
import 'package:laundry_app/summary.dart';
import 'package:laundry_app/tab/home.dart';
import 'package:laundry_app/tab/profile.dart';
import 'package:laundry_app/track_order.dart';
import 'package:provider/provider.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => cart_provider(),
     child: Builder(builder: (BuildContext context){
       return MaterialApp(
         title: 'Flutter Demo',
         debugShowCheckedModeBanner: false,
         theme: ThemeData(
           primaryColor: Color(0xff02A7A0),
           secondaryHeaderColor:Color(0xffE7FCFB),
           textSelectionColor: Color(0xff7B7A7A),
           fontFamily: 'Montserrat',
           backgroundColor: const Color(0xffAF3E4D),
           primarySwatch:Colors.teal,
         ),
         home: splash_screen(),
       );
      },
     ),
    );
  }
}
