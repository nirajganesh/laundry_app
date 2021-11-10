import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:laundry_app/success.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
class summary extends StatefulWidget {
  const summary({Key? key}) : super(key: key);

  @override
  _summaryState createState() => _summaryState();
}

class _summaryState extends State<summary> {

  bool paynow=false;
  bool cash=false;
  late Razorpay _razorpay;


  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_1DP5mmOlF5G5ag',
      'amount': 2000,
      'name': 'Acme Corp.',
      'description': 'Fine T-Shirt',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "SUCCESS: " + response.paymentId!, toastLength: Toast.LENGTH_SHORT);
    Navigator.push(context, MaterialPageRoute(builder: (context) =>success()),);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "ERROR: " + response.code.toString() + " - " + response.message!,
        toastLength: Toast.LENGTH_SHORT);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName!, toastLength: Toast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff02A7A0),
          title:Text("Summary",style: TextStyle(color: Colors.white),),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:20.0,left:14.0,right:14.0,bottom:15.0),
            child: Row(
              children: <Widget>[
                Text("Order Summary",style: TextStyle(fontSize: 16,color:Color(0xff02A7A0),fontWeight: FontWeight.bold),),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal:",style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                        Text("₹5000",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color(0xff7B7A7A)),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right:12.0,top:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Tax:",style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                        Text("₹0",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color(0xff7B7A7A)),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0,right:10.0,top:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery charge:",style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                        Text("₹10",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color(0xff7B7A7A)),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0,right:10.0,top:10.0,bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Coupon disc:",style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                        Text("-₹10",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color(0xff7B7A7A)),),
                      ],
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0,right:10.0,top:2.0,bottom: 2.0),
                    child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Divider()
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0,right:10.0,top:10.0,bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total:",style: TextStyle(fontSize: 14,color:Color(0xff7B7A7A)),),
                        Text("₹5010",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Color(0xff7B7A7A)),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:30.0,left:14.0,right:14.0,bottom:10.0),
            child: Row(
              children: <Widget>[
                Text("Payment Information",style: TextStyle(fontSize: 16,color:Color(0xff02A7A0),fontWeight: FontWeight.bold),),
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
                    padding: const EdgeInsets.only(left:12.0,right:20.0,top:20.0,bottom: 10.0),
                    child:
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          paynow=true;
                          cash=false;
                        });
                      },
                      child:
                      paynow==false ?
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border:Border.all(width: 2.0, color: const Color(0xff02A7A0)),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width:10),
                            Icon(Icons.credit_card),
                            SizedBox(width:20),
                            Text('Pay now',style: TextStyle(fontSize: 16,color:Colors.black),),
                          ],
                        ),
                      ):
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color:Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(25),
                          border:Border.all(width: 2.0, color: const Color(0xff02A7A0)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width:10),
                                Icon(Icons.credit_card,color: Colors.white,),
                                SizedBox(width:20),
                                Text('Pay now',style: TextStyle(fontSize: 16,color:Colors.white),),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:16.0),
                              child: Icon(Icons.check_circle,color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,right:20.0,top:10.0,bottom:20.0),
                    child:
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          paynow=false;
                          cash=true;
                        });
                      },
                      child: cash==false ?
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border:Border.all(width: 2.0, color: const Color(0xff02A7A0)),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width:10),
                            Icon(Icons.border_all),
                            SizedBox(width:20),
                            Text('Cash On Delivery',style: TextStyle(fontSize: 16,color:Colors.black),),
                          ],
                        ),

                      ):
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color:Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(25),
                          border:Border.all(width: 2.0, color: const Color(0xff02A7A0)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width:10),
                                Icon(Icons.border_all,color: Colors.white,),
                                SizedBox(width:20),
                                Text('Cash On Delivery',style: TextStyle(fontSize: 16,color:Colors.white),),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:16.0),
                              child: Icon(Icons.check_circle,color: Colors.white),
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
          Expanded(
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
                        setState(() {
                           if(paynow==true)
                             {
                               openCheckout();
                             }
                           else
                             {
                               Navigator.push(context, MaterialPageRoute(builder: (context) =>success()),);
                             }
                        });
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
          )
        ],
      ),
    );
  }
}
