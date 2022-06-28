import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:marah1/screen/home_screen.dart';
import 'package:marah1/screen/main_screen.dart';
import 'package:marah1/screen/splash_screen.dart';

class test extends StatefulWidget {
  test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}
class _testState extends State<test> {
 final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => mainscreen()),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/ship1.png',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      
      
      
    );
  }





  @override
  Widget build(BuildContext context) {
    
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
      titlePadding: EdgeInsets.only(left: 50,top: 27),

      bodyTextStyle: TextStyle(fontSize: 15,color:Color.fromARGB(118, 0, 0, 0)),
     bodyPadding: EdgeInsets.only(top: 22),

     // pageColor: Colors.white,
    boxDecoration: BoxDecoration(
      image: DecorationImage(
           image: AssetImage("assets/p3.png"),
           fit: BoxFit.cover,
           opacity: 1,
                  )),
      imagePadding: EdgeInsets.only(top: 200),
    
     // imageFlex: 1 
    );

    return IntroductionScreen(
      key: introKey,
    //  globalBackgroundColor: Colors.white,
      // globalHeader: Align(
      //   alignment: Alignment.topRight,
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.only(top: 16, right: 16),
      //       child:Text(),
      //     ),
      //   ),
      // ),
      // globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 100,
       
      // ),
      pages: [
        PageViewModel(
          title: "Get Any Thing Online",
          body:
          "you can buy any thing Ranging from digital products to hardware whithin few clicks ",
          image: Image(image: AssetImage("assets/ship1.png")),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Shipping to anywhere",
          body:
          "We will ship to anywhere in the world , with 30 day 100% money back policy",
          image:Image(image: AssetImage("assets/ship3.png")),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "On-time delivery",
          body:
          "You can track your product with our powerful tracking service",
          image:Image(image: AssetImage("assets/ship2.png")),
          decoration: pageDecoration,
        ),
     
     
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
     // showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black)),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black)),
      next: const  Text('Next', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black)),
      done: const Text('Finish', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black)),
      curve: Curves.fastLinearToSlowEaseIn,
       controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.black,
        activeColor:Color.fromARGB(255, 202, 202, 16),
        activeSize: Size(22.0, 10.0),
       
      ),
      
      // dotsContainerDecorator: const ShapeDecoration(
      //   color: Colors.white,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
      //   ),
      // ),
    );
    
  }
  }
