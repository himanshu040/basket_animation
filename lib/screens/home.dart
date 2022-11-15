import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

// instead of interpolating smoothly.
final CatmullRomSpline path = CatmullRomSpline(
  const <Offset>[
    Offset(0.0, 0.50),
    Offset(0.50, 0.00),
    Offset(1, 0.50),
    Offset(0.50, 1),
    Offset(0.0, 0.50),
  ],
  startHandle: const  Offset(0.50, 0.00),
  endHandle: const  Offset(0.50, 1),
);
final CatmullRomSpline path1 = CatmullRomSpline(
  const <Offset>[
    Offset(1, 0.50),
    Offset(0.50, 1),
    Offset(0.0, 0.50),
    Offset(0.50, 0.0),
    Offset(1, 0.50),
  ],
  startHandle: const   Offset(0.50, 0.00),
  endHandle: const      Offset(0.0, 0.50),
);



class _HomeState extends State<Home>  with SingleTickerProviderStateMixin {
  late AnimationController controller;

  // bool get isForwardAnimation =>
  //     controller.status == AnimationStatus.forward ||
  //         controller.status == AnimationStatus.completed;
  bool largeView=false;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      value: 0,
      duration: Duration(milliseconds: 400),
      reverseDuration: Duration(milliseconds: 400),
      vsync: this,
    )..addStatusListener((status) => setState(() {}));
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hieght = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
              top:  MediaQuery.of(context).size.height*0.05,
              bottom:MediaQuery.of(context).size.height*0.70,
              child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width*0.60,
                child: FollowCurve2D(
            path: path,
            duration: const Duration(seconds:10),
            child:Image.asset("images/bubble0.png"),
          ),
              )),
          Positioned(
              top:  MediaQuery.of(context).size.height*0.20,
              bottom:MediaQuery.of(context).size.height*0.50,
              child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width*0.60,
                child: FollowCurve2D(
                  path: path1,
                  duration: const Duration(seconds:10),
                  child:Image.asset("images/bubble1.png"),
                ),
              )),
          Positioned(
              top:  MediaQuery.of(context).size.height*0.20,
              bottom:MediaQuery.of(context).size.height*0.50,
              left: MediaQuery.of(context).size.width*0.50,
              child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width*0.60,
                child: FollowCurve2D(
                  path: path1,
                  duration: const Duration(seconds:10),
                  child:Image.asset("images/bubble2.png"),
                ),
              )),
          Positioned(
              top:  MediaQuery.of(context).size.height*0.40,
              bottom:MediaQuery.of(context).size.height*0.10,
              left: MediaQuery.of(context).size.width*0.40,
              child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width*0.60,
                child: FollowCurve2D(
                  path: path1,
                  duration: const Duration(seconds:10),
                  child:Image.asset("images/bubble2.png"),
                ),
              )),
          Positioned(
              top:  MediaQuery.of(context).size.height*0.80,
              bottom:0,

              child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width*0.60,
                child: FollowCurve2D(
            path: path,
            duration: const Duration(seconds:10),
            child:Container(
              height: 10,
              width: 10,
              decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(243, 157, 151,0.5)
              ) ,
            ),
          ),
              )),
          Positioned(
              top:  MediaQuery.of(context).size.height*0.50,
              bottom:MediaQuery.of(context).size.height*0.15,
              left: MediaQuery.of(context).size.width*0.50,
              child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width*0.40,
                child: FollowCurve2D(
                  path: path,
                  duration: const Duration(seconds:10),
                  child:Image.asset("images/bubble0.png"),
                ),
              )),
          Positioned(
              top:  MediaQuery.of(context).size.height*0.20,
              bottom:MediaQuery.of(context).size.height*0.50,
              child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                child: FollowCurve2D(
                  path: path1,
                  duration: const Duration(seconds:10),
                  child:Image.asset("images/bubble1.png"),
                ),
              )),
          Positioned(
              top:  MediaQuery.of(context).size.height*0.70,
              bottom:MediaQuery.of(context).size.height*0.0,
              child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width*0.20,
                child: FollowCurve2D(
                  path: path1,
                  duration: const Duration(seconds:10),
                  child:Image.asset("images/bubble2.png"),
                ),
              )),
          Positioned(
              top:  MediaQuery.of(context).size.height*0.40,
              bottom:MediaQuery.of(context).size.height*0.10,
              left: MediaQuery.of(context).size.width*0.40,
              child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width*0.60,
                child: FollowCurve2D(
                  path: path1,
                  duration: const Duration(seconds:10),
                  child:Image.asset("images/bubble2.png"),
                ),
              )),
          Positioned(
              top:  MediaQuery.of(context).size.height*0.60,
              bottom:MediaQuery.of(context).size.height*0.20,

              child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width*0.60,
                child: FollowCurve2D(
                  path: path,
                  duration: const Duration(seconds:10),
                  child:Container(
                    height: 10,
                    width: 10,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(243, 157, 151,0.5)
                    ) ,
                  ),
                ),
              )),
          Positioned(
            bottom: hieght*0.03,
            left: width*0.05,
             child: AnimatedContainer(
                width:width*0.90,
                    height: changeHeight1(hieght),
                 duration: const Duration(milliseconds: 500),
                 curve: Curves.easeOut,
               child: Container(

                 padding: EdgeInsets.only(left: 20,right:20,top: 50),
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                   color: Colors.white,
                 ),
                 child: Column(
                   children: [
                     AnimatedBuilder(
                     animation: controller,
                     builder: (context, child) => FadeScaleTransition(
    animation: controller,
    child: child,
    ),
    child: Visibility(
    visible: true,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text("Your best food tracker ever!",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              height: 1.2
          ),),
        SizedBox(height: 20,),
        Text("Tell us your food preferaces and we'll only serve you delicious recipes idea.",
          style: TextStyle(
              fontSize: 16,
              letterSpacing: 1,
              color: Colors.grey
          ),),
        SizedBox(height: 40,),

      ],
    ),
    ),
    ),
                     ElevatedButton(
                       style: ButtonStyle(
                           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                               RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(15),
                               )
                           )
                       ),
                       onPressed: (){
                         largeView?
                         setState((){
                           controller.forward();
                           largeView=false;
                         }):
                         setState((){
                           controller.reverse();

                           largeView=true;
                         });
                       },
                       child: Container(
                           alignment: Alignment.center,
                           height: hieght*0.05,
                           width: width*0.70,
                           child: Text("Get Started",)),
                     ),
                   ],
                 ),
               )


                           ),
                  ),
          AnimatedPositioned(
              bottom: changePosition(hieght),
              left: width*0.24,
              curve: Curves.easeOut,
              child:  AnimatedBuilder(
    animation: controller,
    builder: (context, child) => FadeScaleTransition(
    animation: controller,
    child: child,
    ),
    child: Container(height: hieght*0.30,width: width*0.50,

      child: Image.asset("images/basket.png",fit:BoxFit.cover,),
    ),
    ),
              duration: const Duration(milliseconds: 500))

      ]
      ),
    );

  }
  changeHeight1(double h)=>largeView?h*0.85:h/2.5;
  changePosition(double h)=>largeView?h*0.80:h*0.35;
  // Future toggleFAB() =>
  //     isForwardAnimation ? controller.reverse() : controller.forward();
}
class FollowCurve2D extends StatefulWidget {
  const FollowCurve2D({
    Key? key,
    required this.path,
    this.curve = Curves.linear,
    required this.child,
    required this.duration,
  }) : super(key: key);

  final Curve2D path;
  final Curve curve;
  final Duration duration;
  final Widget child;

  @override
  State<FollowCurve2D> createState() => _FollowCurve2DState();
}

class _FollowCurve2DState extends State<FollowCurve2D>
    with TickerProviderStateMixin {
  // The animation controller for this animation.
  late AnimationController controller;
  // The animation that will be used to apply the widget's animation curve.
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: widget.duration, vsync: this);
    animation = CurvedAnimation(parent: controller, curve: widget.curve);
    // Have the controller repeat indefinitely.  If you want it to "bounce" back
    // and forth, set the reverse parameter to true.
    controller.repeat();
    controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    // Always have to dispose of animation controllers when done.
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Scale the path values to match the -1.0 to 1.0 domain of the Alignment widget.
    final Offset position =
        widget.path.transform(animation.value) * 2.0 - const Offset(1.0, 1.0);
    return Align(
      alignment: Alignment(position.dx, position.dy),
      child: widget.child,
    );
  }
}

