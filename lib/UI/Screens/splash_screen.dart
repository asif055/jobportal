import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobportal/UI/Screens/register_Screen.dart';
import 'package:jobportal/UI/Screens/register_button_for_both.dart';
import 'package:jobportal/core/constants/text_style.dart';

import 'login_button_for_both.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState

    Future.delayed(Duration(seconds: 4), () {
      print("After 4 second delay");

      ///Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));

      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginButtonsForBoth()),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 0,
              ),

              ///Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ///Logo Icon
                  Image.asset(
                    "assets/images/logo2.PNG.png",
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                  ),

                  /// width: 88,
                  ///height: 88,
                  ///fit: BoxFit.contain,
                  /// ),

                  ///Text of the Logo
                  /* Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Islamia',
                        style: boldBlueTextStyle,



                      ),
                      Text('College',
                        style: regularBlackTextStyle,
                      ),
                    ],

                  )*/
                ],
              ),

              ///Powered By
              Column(
                children: [
                  Text("Powered by"),
                  Image.asset(
                    "assets/images/coollogo_com-14805158.png",
                    width: 134,
                    height: 134,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 36,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
