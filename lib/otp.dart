import 'package:flutter/material.dart';
import 'package:laundry_app/tab/home.dart';
class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  _otpState createState() => _otpState();
}

class _otpState extends State<otp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color:Color(0xff7B7A7A)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
         child: Center(
           child: Column(
             children: [
                SizedBox(height:20),
                Text('Enter the 6-digit OTP sent to',style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                SizedBox(height:20),
                Text('+91 88888888',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:Color(0xff7B7A7A)),),
                SizedBox(height:40),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right:20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0,color: Colors.black),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child:Center(child: Text('6',style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),)),
                          ),
                        SizedBox(width: 5,),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0,color: Colors.black),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child:Center(child: Text('6',style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),)),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0,color: Colors.black),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child:Center(child: Text('6',style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),)),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0,color: Colors.black),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child:Center(child: Text('6',style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),)),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0,color: Colors.black),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child:Center(child: Text('6',style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),)),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0,color: Colors.black),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child:Center(child: Text('6',style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),)),
                        )
                      ],
                    ),
                ),
                SizedBox(height:40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text("Didn't receive the code?",style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                        Text('Resend',style: TextStyle(fontSize: 14,color:Colors.black),),
                      ],
                    ),
                    Text('1:00',style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                  ],
                ),
               SizedBox(height:20),
                Text("Get Otp On Call",style: TextStyle(fontSize: 14,color:Colors.black),),
               SizedBox(height:20),
               Padding(
                 padding: const EdgeInsets.only(top:16.0,left:20,right:20),
                 child: Container(
                   height: 50,
                   child: ElevatedButton(
                     onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) =>home()),);
                     },
                     child: Container(
                       child: Center(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text('Continue',style: TextStyle(fontSize: 16,color: Colors.white),),
                           ],
                         ),
                       ),
                     ),
                     style: ElevatedButton.styleFrom(
                       primary: Color(0xff02A7A0),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(35), // <--// Radius
                       ),
                     ),
                   ),
                 ),
               ),
             ],
           ),
         ),
      ),
    );
  }
}
