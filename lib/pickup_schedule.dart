import 'package:flutter/material.dart';
import 'package:laundry_app/model/date_list.dart';
import 'package:laundry_app/model/time_list.dart';
import 'package:laundry_app/summary.dart';
class pickup_schedule extends StatefulWidget {
  const pickup_schedule({Key? key}) : super(key: key);

  @override
  _pickup_scheduleState createState() => _pickup_scheduleState();
}

class _pickup_scheduleState extends State<pickup_schedule> {

  int date_value=-1;
  int time_value=-1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff02A7A0),
        title:Text("Pickup Schedule",style: TextStyle(color: Colors.white),),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body:Column(
        children: [
          Expanded(
            flex:6,
            child: SingleChildScrollView(
                child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:20.0,left:14.0,right:14.0,bottom:15.0),
                          child: Row(
                            children: <Widget>[
                              Text("Pickup And Drop Information",style: TextStyle(fontSize: 16,color:Color(0xff02A7A0),fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0,left:17.0,right:17.0),
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
                                  child: Container(
                                    height: 40,
                                    child: TextField(
                                           decoration: InputDecoration(
                                             border: UnderlineInputBorder(),
                                             hintText: "Flat no./House no.",
                                           ),
                                         ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:12.0,right:12.0,top:10.0),
                                  child: Container(
                                    height: 40,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        hintText: "Street/Area",
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:12.0,right:12.0,top:10.0),
                                  child: Container(
                                    height: 40,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        hintText: "Town",
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:12.0,right:12.0,top:10.0),
                                  child: Container(
                                    height: 40,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        hintText: "State",
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:12.0,right:12.0,top:10.0),
                                  child: Container(
                                    height: 40,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        hintText: "Pincode",
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:12.0,right:12.0,top:10.0,bottom:15.0),
                                  child: Container(
                                    height: 40,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        hintText: "Phone no.",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:35.0,left:14.0,right:14.0),
                          child: Row(
                            children: <Widget>[
                              Text("Select Date",style: TextStyle(fontSize: 16,color:Color(0xff02A7A0),fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:17.0,right:17.0),
                          child: Container(
                            margin:EdgeInsets.symmetric(vertical:20.0),
                            height: 100.0,
                            child: ListView.builder(
                              itemCount: list_data.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, position) {
                                return GestureDetector(
                                  onTap: (){
                                    setState(() {
                                       date_value=position;
                                    });
                                  },
                                  child:
                                  position==date_value ?
                                  Container(
                                    width: 80.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
                                      borderRadius: BorderRadius.circular(9),
                                      color:Color(0xff02A7A0),
                                    ),
                                    child: Card(
                                      elevation: 0.0,
                                      color:Color(0xff02A7A0),
                                      child: Center(
                                        child: Wrap(
                                          children:<Widget> [
                                            Center(child: Text(list_data[position].date_no,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:Colors.white),)),
                                            ListTile(
                                              title: Text(list_data[position].month,style: TextStyle(color:Colors.white),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ):
                                  Container(
                                    width: 80.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Card(
                                      elevation: 0.0,
                                      child: Center(
                                        child: Wrap(
                                          children:<Widget> [
                                            Center(child: Text(list_data[position].date_no,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:Color(0xff7B7A7A)),)),
                                            ListTile(
                                              title: Text(list_data[position].month,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:Color(0xff7B7A7A)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:15.0,left:14.0,right:14.0),
                          child: Row(
                            children: <Widget>[
                              Text("Select Time",style: TextStyle(fontSize: 16,color:Color(0xff02A7A0),fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:17.0,right:17.0),
                          child: Container(
                            margin:EdgeInsets.symmetric(vertical:20.0),
                            height: 30,
                            child: ListView.builder(
                              itemCount: list_time.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (Context, position){
                                return GestureDetector(
                                  onTap: ()
                                  {
                                    setState(() {
                                      time_value=position;
                                    });
                                  },
                                  child:
                                  time_value==position ?
                                          Container(
                                            width: 138.0,
                                            decoration: BoxDecoration(
                                              border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
                                              borderRadius: BorderRadius.circular(25),
                                              color:Color(0xff02A7A0),
                                            ),
                                            child: Card(
                                              color:Color(0xff02A7A0),
                                              elevation: 0.0,
                                              child: Center(
                                                child: Wrap(
                                                  children:<Widget> [
                                                    Center(child: Text(list_time[position].time,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:Colors.white),)),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ):
                                  Container(
                                    width: 138.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
                                      borderRadius: BorderRadius.circular(25),
                                      color:Color(0xffE7FCFB),
                                    ),
                                    child: Card(
                                      color:Color(0xffE7FCFB),
                                      elevation: 0.0,
                                      child: Center(
                                        child: Wrap(
                                          children:<Widget> [
                                            Center(child: Text(list_time[position].time,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:Color(0xff7B7A7A)),)),
                                          ],
                                        ),
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
          ),
          Expanded(
            flex:1,
            child: Container(
              height: 87,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top:16.0,left:20,right:20,bottom: 16.0),
                child: Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>summary()),);
                    },
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          offset: Offset(2, 2),
                          blurRadius: 12,
                          color: Color.fromRGBO(0, 0, 0, 0.16),
                        ),
                      ]),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Proceed To Payment >>',style: TextStyle(fontSize: 16,color: Colors.white),),
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
            ),
          ),
        ],
      ),
    );

  }
}
