import 'package:flutter/material.dart';
import 'package:laundry_app/order_details.dart';
import 'package:laundry_app/track_order.dart';
class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  _orderState createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff02A7A0),
        title:Text("Orders",style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff02A7A0)),
                  borderRadius: BorderRadius.circular(15),
                  color:Color(0xffE7FCFB),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Order Placed On",style: TextStyle(fontSize: 14),),
                                Text("Order status",style: TextStyle(fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("July 10th,Friday 2021",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),),
                                Text("Pending",style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total items",style: TextStyle(fontSize: 14),),
                                Text("Total Amount",style: TextStyle(fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("20",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),),
                                Text("₹ 500",style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        child: Divider(
                          color: Colors.black,
                          height: 20,
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>order_details()),);
                              },
                              child: Text('See Details',style: TextStyle(fontSize: 16),),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 20,right: 20)),
                                  foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xffE7FCFB)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                          side: BorderSide(color:Theme.of(context).primaryColor)
                                      )
                                  )
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context) =>track_order()),);
                              },
                              child: Text('Track Order',style: TextStyle(fontSize: 16,color: Colors.white),),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 20,right: 20)),
                                  foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                                  backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                          side: BorderSide(color:Theme.of(context).primaryColor)
                                      )
                                  )
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff02A7A0)),
                  borderRadius: BorderRadius.circular(15),
                  color:Color(0xffE7FCFB),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Order Placed On",style: TextStyle(fontSize: 14),),
                                Text("Order status",style: TextStyle(fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("July 10th,Friday 2021",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),),
                                Text("Pending",style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total items",style: TextStyle(fontSize: 14),),
                                Text("Total Amount",style: TextStyle(fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("20",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),),
                                Text("₹ 500",style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        child: Divider(
                          color: Colors.black,
                          height: 20,
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) =>order_details()),);
                              },
                              child: Text('See Details',style: TextStyle(fontSize: 16),),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 20,right: 20)),
                                  foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xffE7FCFB)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                          side: BorderSide(color:Theme.of(context).primaryColor)
                                      )
                                  )
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) =>order_details()),);
                              },
                              child: Text('Track Order',style: TextStyle(fontSize: 16,color: Colors.white),),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 20,right: 20)),
                                  foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                                  backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                          side: BorderSide(color:Theme.of(context).primaryColor)
                                      )
                                  )
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff02A7A0)),
                  borderRadius: BorderRadius.circular(15),
                  color:Color(0xffE7FCFB),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Order Placed On",style: TextStyle(fontSize: 14),),
                                Text("Order status",style: TextStyle(fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("July 10th,Friday 2021",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),),
                                Text("Pending",style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total items",style: TextStyle(fontSize: 14),),
                                Text("Total Amount",style: TextStyle(fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("20",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),),
                                Text("₹ 500",style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        child: Divider(
                          color: Colors.black,
                          height: 20,
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) =>order_details()),);
                              },
                              child: Text('See Details',style: TextStyle(fontSize: 16),),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 20,right: 20)),
                                  foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xffE7FCFB)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                          side: BorderSide(color:Theme.of(context).primaryColor)
                                      )
                                  )
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) =>order_details()),);
                              },
                              child: Text('Track Order',style: TextStyle(fontSize: 16,color: Colors.white),),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 20,right: 20)),
                                  foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                                  backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                          side: BorderSide(color:Theme.of(context).primaryColor)
                                      )
                                  )
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff02A7A0)),
                  borderRadius: BorderRadius.circular(15),
                  color:Color(0xffE7FCFB),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Order Placed On",style: TextStyle(fontSize: 14),),
                                Text("Order status",style: TextStyle(fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("July 10th,Friday 2021",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),),
                                Text("Pending",style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total items",style: TextStyle(fontSize: 14),),
                                Text("Total Amount",style: TextStyle(fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("20",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),),
                                Text("₹ 500",style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        child: Divider(
                          color: Colors.black,
                          height: 20,
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context) =>order_details()),);
                              },
                              child: Text('See Details',style: TextStyle(fontSize: 16),),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 20,right: 20)),
                                  foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xffE7FCFB)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                          side: BorderSide(color:Theme.of(context).primaryColor)
                                      )
                                  )
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) =>order_details()),);
                              },
                              child: Text('Track Order',style: TextStyle(fontSize: 16,color: Colors.white),),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 20,right: 20)),
                                  foregroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                                  backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25),
                                          side: BorderSide(color:Theme.of(context).primaryColor)
                                      )
                                  )
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
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
