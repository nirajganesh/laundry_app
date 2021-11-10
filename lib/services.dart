
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:laundry_app/db/db_helper.dart';
import 'package:laundry_app/model/cart_model.dart';
import 'package:laundry_app/model/product_list.dart';
import 'package:laundry_app/provider/cart_provider.dart';
import 'package:laundry_app/tab/cart.dart';
import 'package:provider/provider.dart';
class services extends StatefulWidget {
  const services({Key? key}) : super(key: key);

  @override
  _servicesState createState() => _servicesState();
}

class _servicesState extends State<services> with SingleTickerProviderStateMixin {

  TabController? _tabController;
  bool isButtonActive1=true;
  bool isButtonActive2=true;
  bool isButtonActive3=true;
  bool isButtonActive4=true;
  bool isButtonActive5=true;
  bool isButtonActive6=true;

  String checker="false";
  List<product_list> man_list=[];
  db_helper? dbhelper=db_helper();


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {


    final cart_data=Provider.of<cart_provider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff02A7A0),
        title:Text("Wash & Fold",style: TextStyle(color: Colors.white),),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions:<Widget>[
           Center(
             child: GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => cart()),);
               },
               child: Badge(
                 badgeContent: Consumer<cart_provider>(
                   builder: (context,value,child)
                   {
                     return Text(value.getcounter().toString(),style: TextStyle(color:Colors.white),);
                   },
                 ),
                 animationDuration: Duration(milliseconds: 300),
                 child:Icon(Icons.shopping_bag_outlined,size: 30,),
               ),
             ),
           ),
          SizedBox(width: 20.0,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color:Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 25,
                      offset: Offset(0, 10), // changes position of shadow
                    ),
                  ],
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'MAN',
                  ),
                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text:'WOMAN',
                  ),
                  Tab(
                    text: 'KIDS',
                  ),
                  Tab(
                    text: 'OTHERS',
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  Padding(
                    padding: const EdgeInsets.only(top:17.0,left:5.0,right:5.0),
                    child: Container(
                      height: 450.0,
                      child:
                      ListView.builder (
                             itemCount:man_data.length,
                             scrollDirection: Axis.vertical,
                             itemBuilder: (context,position) {
                               return Container(
                                 margin: EdgeInsets.all(10),
                                 width: 90.0,
                                 decoration: BoxDecoration(
                                   border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
                                   borderRadius: BorderRadius.circular(9),
                                   color:Color(0xffE7FCFB),
                                 ),
                                 child: Card(
                                   color:Color(0xffE7FCFB),
                                   elevation: 0.0,
                                   child: Center(
                                     child: Wrap(
                                       children:<Widget> [
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children:[
                                             Padding(
                                               padding: const EdgeInsets.only(top:5.0,left:5.0,bottom: 5.0),
                                               child: Row(
                                                 children: [
                                                   Image.asset('images/wash.png',height: 40,),
                                                   SizedBox(width: 15,),
                                                   Column(
                                                     crossAxisAlignment: CrossAxisAlignment.start,
                                                     children: [
                                                       Text(man_data[position].name,style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                                                       Text("₹"+man_data[position].price.toString(),style: TextStyle(fontSize: 14,color:const Color(0xff7B7A7A)),)
                                                     ],
                                                   ),
                                                 ],
                                               ),
                                             ),
                                             Padding(
                                               padding: const EdgeInsets.only(top:16.0,left:10,right:7,bottom:10),
                                               child:
                                               Container(
                                                 height: 30,
                                                 child: ElevatedButton(
                                                   // onPressed: isButtonActive1 ? (){
                                                   //   setState(()=>isButtonActive1 = false);
                                                   // }:null,
                                                   onPressed: (){
                                                     setState(() {
                                                       // final product_list = cart_list(
                                                       //   pid:man_data[position].id,
                                                       //   isImportant: true,
                                                       //   name:man_data[position].name,
                                                       //   category:man_data[position].category,
                                                       //   price:man_data[position].price,
                                                       //   subcategory:man_data[position].subcategory,
                                                       // );
                                                       // cart_database.instance.create(product_list);
                                                      // bool getid=dbhelper!.getItem(int.parse(man_data[position].id));
                                                       dbhelper!.insert(
                                                         cart_model(
                                                             id: int.parse(man_data[position].id),
                                                             productId: man_data[position].id,
                                                             name: man_data[position].name,
                                                             category: man_data[position].category,
                                                             subcategory: man_data[position].subcategory,
                                                             initprice: man_data[position].price,
                                                             productprice: man_data[position].price,
                                                             quantity:man_data[position].quantity,
                                                         ),
                                                       ).then((value){

                                                         Fluttertoast.showToast(
                                                             msg: "Product added successfully",
                                                             toastLength: Toast.LENGTH_SHORT,
                                                             gravity: ToastGravity.CENTER,
                                                             timeInSecForIosWeb: 1,
                                                             backgroundColor: Colors.green,
                                                             textColor: Colors.white,
                                                             fontSize: 16.0
                                                         );
                                                         cart_data.addtotalprice(double.parse(man_data[position].price.toString()));
                                                         cart_data.addcounter();
                                                       }).onError((error, stackTrace){

                                                       });
                                                     });
                                                   },
                                                   child: Container(
                                                     child: Center(
                                                       child: Row(
                                                         children: [
                                                           Text('ADD',style: TextStyle(fontSize: 14,color: Colors.white),),
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
                                       ],
                                     ),
                                   ),
                                 ),
                               );
                             },
                           ),
                    ),
                  ),
                  // second tab bar view widget
                  Padding(
                    padding: const EdgeInsets.only(top:17.0,left:5.0,right:5.0),
                    child: Container(
                      height: 450.0,
                      child: ListView.builder(
                        itemCount: woman_data.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context,position){
                          return Container(
                            margin: EdgeInsets.all(10),
                            width: 90.0,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
                              borderRadius: BorderRadius.circular(9),
                              color:Color(0xffE7FCFB),
                            ),
                            child: Card(
                              color:Color(0xffE7FCFB),
                              elevation: 0.0,
                              child: Center(
                                child: Wrap(
                                  children:<Widget> [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:[
                                        Padding(
                                          padding: const EdgeInsets.only(top:5.0,left:5.0,bottom: 5.0),
                                          child: Row(
                                            children: [
                                              Image.asset('images/wash.png',height: 40,),
                                              SizedBox(width: 15,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(woman_data[position].name,style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                                                  Text("₹"+woman_data[position].price.toString(),style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:16.0,left:10,right:7,bottom:10),
                                          child: Container(
                                            height: 30,
                                            child: ElevatedButton(
                                              onPressed: isButtonActive1 ? (){
                                                setState(()=>isButtonActive1 = false);
                                              }:null,
                                              child: Container(
                                                child: Center(
                                                  child: Row(
                                                    children: [
                                                      Text('ADD',style: TextStyle(fontSize: 14,color: Colors.white),),
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
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:17.0,left:5.0,right:5.0),
                    child: Container(
                      height: 450.0,
                      child: ListView.builder(
                        itemCount: kids_data.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context,position){
                          return Container(
                            margin: EdgeInsets.all(10),
                            width: 90.0,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
                              borderRadius: BorderRadius.circular(9),
                              color:Color(0xffE7FCFB),
                            ),
                            child: Card(
                              color:Color(0xffE7FCFB),
                              elevation: 0.0,
                              child: Center(
                                child: Wrap(
                                  children:<Widget> [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:[
                                        Padding(
                                          padding: const EdgeInsets.only(top:5.0,left:5.0,bottom: 5.0),
                                          child: Row(
                                            children: [
                                              Image.asset('images/wash.png',height: 40,),
                                              SizedBox(width: 15,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(kids_data[position].name,style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                                                  Text("₹"+kids_data[position].price.toString(),style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:16.0,left:10,right:7,bottom:10),
                                          child: Container(
                                            height: 30,
                                            child: ElevatedButton(
                                              onPressed: isButtonActive1 ? (){
                                                setState(()=>isButtonActive1 = false);
                                              }:null,
                                              child: Container(
                                                child: Center(
                                                  child: Row(
                                                    children: [
                                                      Text('ADD',style: TextStyle(fontSize: 14,color: Colors.white),),
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
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  // second tab bar view widget
                  Padding(
                    padding: const EdgeInsets.only(top:17.0,left:5.0,right:5.0),
                    child: Container(
                      height: 450.0,
                      child: ListView.builder(
                        itemCount: other_data.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context,position){
                          return Container(
                            margin: EdgeInsets.all(10),
                            width: 90.0,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
                              borderRadius: BorderRadius.circular(9),
                              color:Color(0xffE7FCFB),
                            ),
                            child: Card(
                              color:Color(0xffE7FCFB),
                              elevation: 0.0,
                              child: Center(
                                child: Wrap(
                                  children:<Widget> [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:[
                                        Padding(
                                          padding: const EdgeInsets.only(top:5.0,left:5.0,bottom: 5.0),
                                          child: Row(
                                            children: [
                                              Image.asset('images/wash.png',height: 40,),
                                              SizedBox(width: 15,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(other_data[position].name,style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                                                  Text("₹"+other_data[position].price.toString(),style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:16.0,left:10,right:7,bottom:10),
                                          child: Container(
                                            height: 30,
                                            child: ElevatedButton(
                                              onPressed: isButtonActive1 ? (){
                                                setState(()=>isButtonActive1 = false);
                                              }:null,
                                              child: Container(
                                                child: Center(
                                                  child: Row(
                                                    children: [
                                                      Text('ADD',style: TextStyle(fontSize: 14,color: Colors.white),),
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
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}



