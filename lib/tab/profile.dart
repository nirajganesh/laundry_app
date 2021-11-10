
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {

  File? image;
  Future pickImage() async
  {
    try{
      final image=await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image==null) return;

      final imageTemporary=File(image.path);
      setState(() {
        this.image=imageTemporary;
      });
    }on PlatformException catch (e){
      Fluttertoast.showToast(
          msg: "Failed to pick image",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff02A7A0),
        title:Text("Profile",style: TextStyle(color: Colors.white),),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
              borderRadius: BorderRadius.circular(9),
              color:Color(0xffE7FCFB),
            ),
            child:Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Center(
                    child: GestureDetector(
                      onTap: (){
                        pickImage();
                      },
                      child: image !=null ?
                      ClipOval(
                        child:Image.file(image!,width: 100,height: 100,fit: BoxFit.cover),
                      ):
                      CircleAvatar(
                        radius: 45.0,
                        backgroundImage:AssetImage('images/profile_photo.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color:Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius:1,
                              offset: Offset(1, 1), // Shadow position
                            ),
                          ],
                        ),
                        child: Icon(Icons.perm_contact_calendar_sharp),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name",style: TextStyle(fontSize: 12,color: Colors.black.withOpacity(0.5)),),
                          SizedBox(height: 6,),
                          Text("Digikraft Social",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color:Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius:1,
                              offset: Offset(1, 1), // Shadow position
                            ),
                          ],
                        ),
                        child: Icon(Icons.email),

                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email",style: TextStyle(fontSize: 12,color: Colors.black.withOpacity(0.5)),),
                          SizedBox(height: 6,),
                          Text("Digikraftsocial@gmail.com",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color:Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius:1,
                              offset: Offset(1, 1), // Shadow position
                            ),
                          ],
                        ),
                        child: Icon(Icons.phone),

                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Phone no.",style: TextStyle(fontSize: 12,color: Colors.black.withOpacity(0.5)),),
                          SizedBox(height: 6,),
                          Text("+91 8888888888",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.logout,color:Color(0xffAF3E4D),),
                        SizedBox(width: 3,),
                        Text("Log Out",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color(0xffAF3E4D)),),
                      ],
                    ),
                  SizedBox(height: 15,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
