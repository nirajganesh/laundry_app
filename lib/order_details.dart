import 'package:flutter/material.dart';
import 'package:laundry_app/track_order.dart';
class order_details extends StatefulWidget {
  const order_details({Key? key}) : super(key: key);

  @override
  _order_detailsState createState() => _order_detailsState();
}

class _order_detailsState extends State<order_details> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff02A7A0),
        elevation: 0.0,
        title:Text("Orders Details"),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 12,),
                Text("Items",style: TextStyle(fontSize: 14,),),
                Text("₹ 300",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  border: Border.all(color:Color(0xff02A7A0)),
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
                      Container(
                        child: Divider(
                          color: Colors.black,
                          height: 20,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Items",style: TextStyle(fontSize: 12,color:Color(0xff02A7A0)),),
                            SizedBox(height:15),
                            Text("TShirt",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            Text("Sut",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            Text("Patiyala Sut",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            Text("Shirt",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                            Column(
                              children: [
                                Text("Items",style: TextStyle(fontSize: 14,),),
                                Text("₹ 300",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              ],
                            )
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
