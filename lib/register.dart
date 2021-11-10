import 'package:flutter/material.dart';
import 'package:laundry_app/login.dart';
import 'package:laundry_app/otp.dart';
import 'package:laundry_app/tab/home.dart';
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {

  final TextEditingController usernameController=TextEditingController();
  final TextEditingController passwordEditingcontroller= TextEditingController();
  final TextEditingController phoneController=TextEditingController();
  bool hiddenpassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height:50),
              Image.asset('images/logo.png',height: 100,),
              SizedBox(height:50),
              Text('SIGN UP',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,height: 1,color: Color(0xff02A7A0),fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(top:16.0,left:20,right:20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border:Border.all(width: 2.0, color: const Color(0xff7B7A7A)),
                  ),
                  height: 50,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right:8.0),
                        child: Icon(Icons.person,color: Colors.black38),
                      ),
                      Container(
                        width: 1.0,
                        height: 25.0,
                        color:Color(0xff7B7A7A),
                      ),
                      SizedBox(width:8.0),
                      Flexible(
                        child: TextField(
                          controller: usernameController,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter user name',
                              hintStyle: TextStyle(
                                  color: Colors.black38
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(top:16.0,left:20,right:20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                     border:Border.all(width: 2.0, color: const Color(0xff7B7A7A)),
                  ),
                  height: 50,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right:8.0),
                        child: Icon(Icons.lock,color: Colors.black38),
                      ),
                      Container(
                        width: 1.0,
                        height: 25.0,
                        color:Color(0xff7B7A7A),
                      ),
                      SizedBox(width:8.0),
                      Flexible(
                        child: TextField(
                          controller: passwordEditingcontroller,
                          obscureText: hiddenpassword,
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                icon:Icon(hiddenpassword ?Icons.visibility_off :Icons.visibility),
                                onPressed: (){
                                  setState(() {
                                    hiddenpassword=!hiddenpassword;
                                  });
                                },
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: Colors.black38
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(top:16.0,left:20,right:20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border:Border.all(width: 2.0, color: const Color(0xff7B7A7A)),
                  ),
                  height: 50,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right:8.0),
                        child: Icon(Icons.phone,color: Colors.black38),
                      ),
                      Container(
                        width: 1.0,
                        height: 25.0,
                        color:Color(0xff7B7A7A),
                      ),
                      SizedBox(width:8.0),
                      Flexible(
                        child: TextField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter phone number',
                              hintStyle: TextStyle(
                                  color: Colors.black38
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(top:16.0,left:20,right:20),
                child: Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>otp()),);
                    },
                    child: Container(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Sign Up',style: TextStyle(fontSize: 16,color: Colors.white),),
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
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:22.0,right:22.0,top:15.0),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Expanded(
                  child: Container(
                    height: 1.0,
                    color: Color(0xff7B7A7A),
                  ),
                ),
                     Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text("OR",style:TextStyle(color:Colors.black)),
                ),
                     Expanded(
                        child: Container(
                    height: 1.0,
                    color: Colors.grey,
                  ),
                ),
                   ],
          ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border:Border.all(width: 2.0, color: const Color(0xff02A7A0)),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>login()),);
                    },
                    child: Container(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Login',style: TextStyle(fontSize: 16,color: Color(0xff02A7A0)),),
                          ],
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
