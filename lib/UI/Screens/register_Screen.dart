import 'package:flutter/material.dart';
import 'package:jobportal/UI/Screens/profile.dart';
import 'package:jobportal/UI/custom_widgets/custom_blue_button.dart';
import 'package:jobportal/UI/custom_widgets/custom_header.dart';
import 'package:jobportal/UI/custom_widgets/form_conatiner.dart';
import 'package:jobportal/core/constants/colors.dart';
import 'package:jobportal/core/constants/text_style.dart';

import 'home_for_applicant.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  /* String fullName;
  String fatherName;
  String pasword;
  String email;
  String phoneNum;*/
  @override
  Widget build(BuildContext context) {
    ///when you have to given the sized adjestment you have to wrape the Scafold into:
    ///widget name=SingleChild Scroll View
    return Scaffold(
      backgroundColor: scafoldBgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(17, 50, 15, 0),
          child: Column(
            children: [
              ///Header_Section
              CustomHeader("REGISTER"),
              SizedBox(
                height: 66,
              ),

              ///Register

              FormContainer(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person),
                        labelText: "Full Name",
                        hintText: "First Middle Last",
                      ),
                      keyboardType: TextInputType.name,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person),
                        labelText: "F Name",
                        hintText: "Father Full Name",
                      ),
                      keyboardType: TextInputType.name,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.phone),
                        labelText: "Phone Number",
                        hintText: "eg 03328869692",
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person),
                        labelText: "Email",
                        hintText: "alamdarali29@gmail.com",
                      ),
                    ),
                    TextField(
                      obscureText: true,

                      ///its mean's that it's does not show to you
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock_open),
                        labelText: "Password",
                        hintText: "Ali2228*",
                      ),
                    ),
                  ],
                ),
              ),

              /*     SizedBox(height: 00,),
              SizedBox(height: 00,),*/
              SizedBox(
                height: 36,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'please note that you must use your official',
                    style: regularBlackTextStyle.copyWith(fontSize: 13),
                    children: [
                      TextSpan(
                        text: 'Student email',
                        style: regularBlackTextStyle.copyWith(
                            fontSize: 13, color: blueThemeColor),
                      ),
                      TextSpan(
                        text: 'while registration',
                      )
                    ]),
              ),

              ///information text
              /*      Text("Please note that you must use you'r Official email address",
                 textAlign: TextAlign.center,
                style: regularBlackTextStyle.copyWith(
                  fontSize: 17,
                ),
              ),*/
              ///  SizedBox(height: 100,),

              ///Register button
              /*  RaisedButton(onPressed: (){
                print("registerButton pressed");
              })*/
              SizedBox(height: 62),
              CustomBlueButton(
                  text: "Register",
                  onPressed: () {
                    ///this lines means that when you want back page from this button
                    ///Navigator.pop(context);

                    /// when you jump to another Screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreenAplicant()));
                    print("Register button pressed");
                  }),
              SizedBox(height: 20),

              ///register Section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "If You have already account?",
                    style: regularBlackTextStyle.copyWith(fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Log In",
                      style: boldBlueTextStyle.copyWith(fontSize: 14),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
