import 'package:flutter/material.dart';
import 'package:laundry_app/db/db_helper.dart';
import 'package:laundry_app/model/cart_model.dart';
import 'package:laundry_app/pickup_schedule.dart';
import 'package:laundry_app/provider/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {

  db_helper? dbhelper=db_helper();


  @override
  Widget build(BuildContext context) {
    final cart_data=Provider.of<cart_provider>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff02A7A0),
          title:Text("Cart",style: TextStyle(color: Colors.white),),
          leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20.0,left:17.0,right:17.0),
              child: Container(
                height: 500,
                child: FutureBuilder(
                  future: cart_data.getData(),
                  builder:(context,AsyncSnapshot<List<cart_model>> snapshot)
                  {
                    return
                      snapshot.hasData==null ?
                      Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: Container(
                          child: Center(
                            child:Shimmer.fromColors(baseColor:Color(0xffE7FCFB), highlightColor: Color(0xff02A7A0),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child:Card(
                                        color: Colors.white,
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Container(
                                            child:Column(
                                              children: <Widget>[
                                                Row(
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),

                                          ),
                                        ),
                                      ),

                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      child:Card(
                                        color: Colors.white,
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Container(
                                            child:Column(
                                              children: <Widget>[
                                                Row(
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),

                                          ),
                                        ),
                                      ),

                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      child:Card(
                                        color: Colors.white,
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Container(
                                            child:Column(
                                              children: <Widget>[
                                                Row(
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),

                                          ),
                                        ),
                                      ),

                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      child:Card(
                                        color: Colors.white,
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Container(
                                            child:Column(
                                              children: <Widget>[
                                                Row(
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children:<Widget> [
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 10,
                                                      alignment: Alignment.topLeft,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black26,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),

                                          ),
                                        ),
                                      ),

                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ):
                      ListView.builder(
                          itemCount:snapshot.data!.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context,position){
                            return Padding(
                              padding: const EdgeInsets.only(top:10.0),
                              child: Container(
                                width: 90.0,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1.0,color:Color(0xff02A7A0),),
                                  borderRadius: BorderRadius.circular(9),
                                  color:Color(0xffE7FCFB),
                                ),
                                child: Card(
                                  color:Color(0xffE7FCFB),
                                  elevation: 0.0,
                                  child: Wrap(
                                    children:<Widget> [
                                      Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:[
                                              Row(
                                                children: [
                                                  SizedBox(width: 5,),
                                                  Image.asset('images/wash.png',height: 40,),
                                                  SizedBox(width: 15,),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(snapshot.data![position].name,style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                                                      Text(snapshot.data![position].category,style: TextStyle(fontSize: 12,color:Color(0x687b7a7a)),),
                                                      SizedBox(height: 5,),
                                                      Text("₹"+snapshot.data![position].initprice.toString(),style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color:Color(0xff7B7A7A)),)
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    width: 28,
                                                    height: 28,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(5),
                                                      color: Theme.of(context).backgroundColor,
                                                    ),
                                                    child: GestureDetector(
                                                        onTap: (){
                                                          dbhelper!.delete(snapshot.data![position].id);
                                                          cart_data.removercounter();
                                                          cart_data.removertotalprice(double.parse(snapshot.data![position].productprice.toString()));
                                                        },
                                                        child: Icon(Icons.delete,color:Colors.white,size: 17.0,)),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top:16.0,left:20,right:10),
                                                    child:
                                                    Row(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(bottom:10.0),
                                                              child: GestureDetector(
                                                                onTap: (){
                                                                  int quantity=snapshot.data![position].quantity;
                                                                  int price=snapshot.data![position].initprice;
                                                                  quantity--;

                                                                  if(quantity>0)
                                                                    {
                                                                      int? newprice=price* quantity;
                                                                      dbhelper!.updateQuanity(
                                                                          cart_model(
                                                                              id: snapshot.data![position].id,
                                                                              productId: snapshot.data![position].id.toString(),
                                                                              name: snapshot.data![position].name,
                                                                              category: snapshot.data![position].category,
                                                                              subcategory: snapshot.data![position].subcategory,
                                                                              initprice: snapshot.data![position].initprice,
                                                                              productprice: snapshot.data![position].productprice,
                                                                              quantity: quantity)
                                                                      ).then((value){
                                                                        newprice=0;
                                                                        quantity=0;
                                                                        cart_data.removertotalprice(double.parse(snapshot.data![position].initprice.toString()));

                                                                      }).onError((error, stackTrace){

                                                                      });
                                                                    }
                                                                  else if(quantity==0)
                                                                    {
                                                                      quantity=0;
                                                                      dbhelper!.delete(snapshot.data![position].id);
                                                                      cart_data.removercounter();
                                                                      cart_data.removertotalprice(double.parse(snapshot.data![position].productprice.toString()));
                                                                    }

                                                                },
                                                                child: Container(
                                                                  width: 30,
                                                                  height: 30,
                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(25),
                                                                    color:Color(0xff02A7A0),
                                                                  ),
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(bottom: 1.0),
                                                                    child: Icon(Icons.remove_outlined,color: Colors.white,),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(width: 8,),
                                                            Padding(
                                                              padding: const EdgeInsets.only(bottom: 8.0),
                                                              child: Center(child: Text(snapshot.data![position].quantity.toString(),style: TextStyle(fontSize: 16,color:Color(0xff7B7A7A)),)),
                                                            ),
                                                            SizedBox(width: 8,),
                                                            Padding(
                                                              padding: const EdgeInsets.only(bottom:10.0),
                                                              child: GestureDetector(
                                                                onTap: (){
                                                                  int quantity=snapshot.data![position].quantity;
                                                                  int price=snapshot.data![position].initprice;
                                                                  quantity++;
                                                                  int? newprice=price* quantity;
                                                                  dbhelper!.updateQuanity(
                                                                    cart_model(
                                                                        id: snapshot.data![position].id,
                                                                        productId: snapshot.data![position].id.toString(),
                                                                        name: snapshot.data![position].name,
                                                                        category: snapshot.data![position].category,
                                                                        subcategory: snapshot.data![position].subcategory,
                                                                        initprice: snapshot.data![position].initprice,
                                                                        productprice: snapshot.data![position].productprice,
                                                                        quantity: quantity)
                                                                  ).then((value){
                                                                    newprice=0;
                                                                    quantity=0;
                                                                    cart_data.addtotalprice(double.parse(snapshot.data![position].initprice.toString()));

                                                                  }).onError((error, stackTrace){

                                                                  });
                                                                },
                                                                child: Container(
                                                                  width: 30,
                                                                  height: 30,
                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(25),
                                                                    color:Color(0xff02A7A0),
                                                                  ),
                                                                  child: Icon(Icons.add,color: Colors.white,),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                  },
                ),
              ),
            ),
            Visibility(
                visible: cart_data.gettotalprice().toStringAsFixed(2)=="0.00" ? false:true,
                child: Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      height: 87,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(top:16.0,left:20,right:20,bottom: 16.0),
                        child: Container(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>pickup_schedule()),);
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(cart_data.getcounter().toString()+'Items',style: TextStyle(fontSize: 16,color: Colors.white),),
                                          Container(
                                            height: 20,
                                            child: VerticalDivider(
                                              thickness: 1,
                                              color: Color(0xFFF6F4F4),
                                            ),
                                          ),
                                          Text("₹"+cart_data.gettotalprice().toString(),style: TextStyle(fontSize: 16,color: Colors.white),),
                                        ],
                                      ),
                                    ),
                                    Text('Continue >>',style: TextStyle(fontSize: 16,color: Colors.white),),
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
                )),
            // Consumer<cart_provider>(builder: (context,value,child){
            //   return Visibility(
            //       visible: value.gettotalprice().toStringAsFixed(2)=="0.00" ? false:true,
            //       child: Column(
            //       children: [
            //         ReusableWidget(title: "Sub Total", value: r'$'+value.gettotalprice().toStringAsFixed(2))
            //       ],
            //    )
            //   );
            // }),
          ],
        ),
    );
  }
}

// class ReusableWidget extends StatelessWidget {
//   final String title,value;
//   const ReusableWidget({
//     required this.title,
//     required this.value,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: Row(
//         children: [
//           Text(title,style: Theme.of(context).textTheme.subtitle2,),
//           Text(value,style: Theme.of(context).textTheme.subtitle2,),
//         ],
//       ),
//     );
//   }
// }
