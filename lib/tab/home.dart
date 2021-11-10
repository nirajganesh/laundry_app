
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:laundry_app/services.dart';
import 'cart.dart';
import 'package:laundry_app/tab/order.dart';
import 'package:laundry_app/tab/profile.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  int current_index=0;
  final List<Widget>tabs=[
    Home(),
    cart(),
    order(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: tabs[current_index],
      bottomNavigationBar:new Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.white,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.red,
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.yellow))),
      child:BottomNavigationBar(
        currentIndex: current_index,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff02A7A0),
        unselectedItemColor: Color(0xff333333),
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.shopping_bag),
            title: Text("Cart"),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.list_alt_sharp),
            title: Text("Order"),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
        onTap: (index){
          setState(() {
            current_index=index;
          });
        },
      ),
      ),
    );
  }
}

class Home extends StatefulWidget {

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map> myProducts =
  List.generate(4, (index) => {"id": index, "name": "Product $index"})
      .toList();
  final TextEditingController usernameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff02A7A0),
        title:Text("Home",style: TextStyle(color: Colors.white),),
        actions:<Widget>[
         Padding(
           padding: const EdgeInsets.only(right:12.0),
           child: CircleAvatar(
              backgroundImage:AssetImage('images/profile_photo.jpg'),
            ),
         ),
        ],
      ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child:Container(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children:<Widget> [
                      Container(
                        height: 170,
                        child: DrawerHeader(
                          child:Column(
                            children: [
                              Image.asset('images/logo.png',height: 100.0,)
                            ],
                          ),
                          decoration: BoxDecoration(
                            color:Colors.white,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Home',
                          style: TextStyle(fontFamily:'Titilliumweb',fontSize: 18.0, color: Colors.black.withOpacity(0.5)),
                        ),
                        leading: Icon(
                          Icons.dashboard,
                          size: 20.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => home()),);
                        },
                      ),
                      ListTile(
                        title: Text(
                          'Cart',
                          style: TextStyle(fontFamily:'Titilliumweb',fontSize: 18.0, color: Colors.black.withOpacity(0.5)),
                        ),
                        leading: Icon(
                          Icons.supervised_user_circle,
                          size: 20.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => cart()),);
                        },
                      ),
                      ListTile(
                        title: Text(
                          'Orders',
                          style: TextStyle(fontFamily:'Titilliumweb',fontSize: 18.0, color: Colors.black.withOpacity(0.5)),
                        ),
                        leading: Icon(
                          Icons.fitness_center,
                          size: 20.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => order()),);
                        },
                      ),
                      ListTile(
                        title: Text(
                          'Profile',
                          style: TextStyle(fontFamily:'Titilliumweb',fontSize: 18.0, color: Colors.black.withOpacity(0.5)),
                        ),
                        leading: Icon(
                          Icons.person,
                          size: 20.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>profile()),);
                        },
                      ),
                      ListTile(
                        title: Text(
                          'Log out',
                          style: TextStyle(fontFamily:'Titilliumweb',fontSize: 18.0, color: Colors.red),
                        ),
                        leading: Icon(
                          Icons.logout,
                          size: 20.0,
                          color: Colors.red,
                        ),
                        onTap: () {
                          // prefs.remove('Login_id');
                          // prefs.remove('Branch_id');
                          // prefs.remove('gym_name');
                          // prefs.remove('Password');
                          // prefs.remove('Name');
                          // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) =>
                          //     admin_login()), (Route<dynamic> route) => false);
                        },
                      ),
                    ],

                  ),
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 80,
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset('images/logo.png',height:25,),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Powered by:   ',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Titilliumweb',
                                            color: Colors.black.withOpacity(0.5),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: ()=>{
                                            //_launchInBrowser(_url)
                                          },
                                          child: Text(
                                            'DigiKraft Social',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'Titilliumweb',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black.withOpacity(0.8),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )


          ),

        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           Padding(
                padding: const EdgeInsets.only(left:17.0,right:17.0,top:25.0,bottom:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("WELCOME TO,",style: TextStyle(fontSize: 12,color:Color(0xff02A7A0)),),
                        SizedBox(height: 5,),
                        Text("LAUNDRY HOUZ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff02A7A0)),),
                      ],
                    ),
                  ],
                ),
              ),
            SizedBox(height: 10,),
            // Padding(
            //   padding: const EdgeInsets.only(left:16,right:16),
            //   child: Container(
            //     alignment: Alignment.centerLeft,
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(25),
            //       border:Border.all(width: 2.0, color: const Color(0xff7B7A7A)),
            //     ),
            //     height: 50,
            //     child: TextField(
            //       controller: usernameController,
            //       keyboardType: TextInputType.emailAddress,
            //       style: TextStyle(
            //         color: Colors.black87,
            //
            //       ),
            //       decoration: InputDecoration(
            //           border: InputBorder.none,
            //           prefixIcon: Icon(
            //             Icons.location_on,
            //             color: Colors.black38,
            //           ),
            //           hintText: 'Seach for a Franchise location',
            //           hintStyle: TextStyle(
            //               color: Colors.black38
            //           )
            //       ),
            //     ),
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.only(left:16,right:16),
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
                      child: Icon(Icons.location_on,color:Theme.of(context).textSelectionColor),
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
                          fontSize: 14.0,
                        ),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Seach for a Franchise location',
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
            Padding(
              padding: const EdgeInsets.only(top:40.0,left:14.0,right:14.0,bottom:10.0),
              child: Row(
                children: <Widget>[
                  Text("Which service do you need",style: TextStyle(fontSize: 16,color:Color(0xff02A7A0),fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,right:16.0),
              child: Container(
                margin:EdgeInsets.symmetric(vertical:20.0),
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>services()),);
                      },
                      child:
                      Container(
                        width: 160.0,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
                          borderRadius: BorderRadius.circular(9),
                          color: Color(0xffE7FCFB),
                        ),
                        child: Card(
                          elevation: 0.0,
                          color: Color(0xffE7FCFB),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 Center(child: Image.asset('images/wash.png')),
                                 SizedBox(height: 10,),
                                 Text("Wash & Fold",style: TextStyle(fontSize: 16,color:Colors.black),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 160.0,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xffE7FCFB),
                      ),
                      child: Card(
                        elevation: 0.0,
                        color: Color(0xffE7FCFB),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(child: Image.asset('images/dry_clean.png')),
                              SizedBox(height: 25,),
                              Text("Dry & Clean",style: TextStyle(fontSize: 16,color:Colors.black),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 160.0,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xffE7FCFB),
                      ),
                      child: Card(
                        elevation: 0.0,
                        color: Color(0xffE7FCFB),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(child: Image.asset('images/iron.png',height: 75,)),
                              SizedBox(height: 10,),
                              Text("Cloth Iron",style: TextStyle(fontSize: 16,color:Colors.black),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>services()),);
                      },
                      child:
                      Container(
                        width: 160.0,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
                          borderRadius: BorderRadius.circular(9),
                          color: Color(0xffE7FCFB),
                        ),
                        child: Card(
                          elevation: 0.0,
                          color: Color(0xffE7FCFB),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(child: Image.asset('images/wash.png')),
                                SizedBox(height: 10,),
                                Text("Wash & Fold",style: TextStyle(fontSize: 16,color:Colors.black),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(top:25.0,left:14.0,right:14.0,bottom:15.0),
              child: Row(
                children: <Widget>[
                  Text("Pramotion",style: TextStyle(fontSize: 16,color:Color(0xff02A7A0),fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Container(
              height: 200,
              child:ListView(
                children: [
                  CarouselSlider(
                    items: [
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/photogram-59c69.appspot.com/o/5736566.jpg?alt=media&token=2665334c-cdbc-4d51-8375-4158c2ddbc96"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/photogram-59c69.appspot.com/o/food-menu-restaurant-facebook-cover-template_106176-275.jpg?alt=media&token=6c78bda2-3445-4281-9aed-c93f2fcc7ceb"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/photogram-59c69.appspot.com/o/5736566.jpg?alt=media&token=2665334c-cdbc-4d51-8375-4158c2ddbc96"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/photogram-59c69.appspot.com/o/food-menu-restaurant-facebook-cover-template_106176-275.jpg?alt=media&token=6c78bda2-3445-4281-9aed-c93f2fcc7ceb"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                    //Slider Container properties
                    options: CarouselOptions(
                      height: 180.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

