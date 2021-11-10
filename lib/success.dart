import 'package:flutter/material.dart';
import 'package:laundry_app/tab/home.dart';
class success extends StatefulWidget {

  const success({Key? key}) : super(key: key);

  @override
  _successState createState() => _successState();
}

class _successState extends State<success> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            SizedBox(height:50),
            Center(child: Image.asset('images/logo.png',height: 70,)),
            SizedBox(height:50),
            Image.asset('images/success.png',height: 150,),
            SizedBox(height:25),
            Text("ORDER PLACED SUCCESSFULLY",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff02A7A0)),),
            SizedBox(height:30),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
                  borderRadius: BorderRadius.circular(9),
                  color:Color(0xffE7FCFB),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:12.0,right:12.0,top:10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order no.",style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                          Text("#56785",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color(0xff7B7A7A)),),
                       ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:12.0,right:12.0,top:10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Payment ref.",style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                          Text("#11123",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color(0xff7B7A7A)),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0,right:10.0,top:10.0,bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Amount Paid",style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                          Text("₹5000",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color(0xff7B7A7A)),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
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
                          Text('Go To Home',style: TextStyle(fontSize: 16,color: Colors.white),),
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
    );
  }
}
