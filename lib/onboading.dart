import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app/controller/getcontroller.dart';
import 'package:laundry_app/model/onboading_content.dart';
import 'package:laundry_app/register.dart';

class onboading extends StatefulWidget {
  const onboading({Key? key}) : super(key: key);

  @override
  _onboadingState createState() => _onboadingState();
}

class _onboadingState extends State<onboading> {
int currentIndex=0;
final getcontroller c=Get.put(getcontroller());
final _controller = new PageController();
static const _kDuration = const Duration(milliseconds: 300);
static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: contents.length,
                  onPageChanged: (int index){
                    setState(() {
                      currentIndex=index;
                      c.state_change=RxInt(index);
                    });
                  },
                  itemBuilder:(_,i){
                    return Padding(
                      padding: const EdgeInsets.all(60),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                         // Image.asset(contents[i].image,height: 250,),
                          AnimatedImage(pos:i),
                          SizedBox(height: 30,),
                          Text(contents[i].title,textAlign: TextAlign.center,style: TextStyle(fontSize: 20,height: 1,color: Color(0xff02A7A0),fontWeight: FontWeight.bold),),
                          SizedBox(height: 30,),
                          Text(contents[i].disciption,textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Color(0xff7B7A7A)),),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:List.generate(
                      contents.length,
                          (index)=>buildDot(index, context)
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child:
                c.state_change.toString()=="0"?
                  Container(
                  width: 180,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) =>register()),);
                        _controller.nextPage(duration: _kDuration, curve: _kCurve);
                    },
                    child: Container(
                      child: Align(
                        alignment:Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Next',style: TextStyle(fontSize: 16,color: Colors.white),),
                            SizedBox(width: 5,),
                            Icon(Icons.arrow_forward,size: 20,),
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
                ):
                c.state_change.toString()=="1"?
                  Container(
                  height: 50,
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left:16.0,right:16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            _controller.previousPage(duration: _kDuration, curve: _kCurve);
                          },
                          child: Container(
                            child: Align(
                              alignment:Alignment.center,
                              child: Icon(Icons.arrow_back,size: 20,),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff02A7A0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35), // <--// Radius
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _controller.nextPage(duration: _kDuration, curve: _kCurve);
                          },
                          child: Container(
                            child: Align(
                              alignment:Alignment.center,
                              child: Icon(Icons.arrow_forward,size: 20,),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff02A7A0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35), // <--// Radius
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ):
                  Container(
                  width: 180,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>register()),);
                    },
                    child: Container(
                      child: Align(
                        alignment:Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Get Started',style: TextStyle(fontSize: 16,color: Colors.white),),
                            SizedBox(width: 5,),
                            Icon(Icons.arrow_forward,size: 20,),
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
              )
            ],
          ),
        ],
      ),
   );
  }

  Container buildDot(int index,BuildContext  context)
  {
    return Container(
      height: 8,
      width: currentIndex==index ? 20:10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }

}

class AnimatedImage extends StatefulWidget {
  final int pos;
  const AnimatedImage(
      {
        required this.pos,
        Key? key})
      : super(key: key);

  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage> with SingleTickerProviderStateMixin {

  late AnimationController _controller=AnimationController(vsync:this,duration:const Duration(seconds: 3),)..repeat(reverse: true);
  late Animation<Offset> _animation=Tween(
    begin:Offset.zero,end:Offset(0,0.08),
  ).animate(_controller);



  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller=AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position: _animation,
        child:
        widget.pos==0 ?
        Image.asset("images/onboarding1.jpg",height:250):
        widget.pos==1 ? Image.asset("images/onboarding2.png",height:250):Image.asset("images/onboarding3.png",height:250),
    );
  }
}

