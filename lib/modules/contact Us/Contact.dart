

import 'package:cheer/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../login/loginScreen.dart';
import '../sign up/SignUp.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);



  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF012A4A),

      ),
      body: Container(
        color:  const Color(0xFFD2EBED),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column (
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/logo.png'),

                    ),
                    const Text(
                      'اتصل بنا',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:30.0,

                      ),),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        decoration: const InputDecoration(
                          hintText:"العنوان: 300 القاهرة",
                          suffixIcon: Icon(
                            Icons.location_city,
                          ),
                        ) ,

                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(

                    textAlign: TextAlign.right,
                      decoration:  InputDecoration(

                       hintText:"الهاتف: 02353215",

                        suffixIcon: Icon(
                          Icons.phone,
                        ),
                      ) ,

                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        hintText:"  U_Therapy@gmail.com:البريد الإلكتروني ",
                        suffixIcon: Icon(
                          Icons.email_outlined,
                        ),
                      ) ,

                    ),






              ]
            ),
          ),
        ),
      ),
      ),
    );
  }
}