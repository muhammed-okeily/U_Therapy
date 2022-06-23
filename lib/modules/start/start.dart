



import 'package:flutter/material.dart';


import '../../navigator/home/home.dart';
import '../login/as doctor/Login_Doctor.dart';
import '../login/loginScreen.dart';
import '../sign up/SignUp.dart';
import '../sign up/as Doctor/Signup_Doctor.dart';

// ignore: camel_case_types
class start extends StatefulWidget {
   const start({Key? key}) : super(key: key);



  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:  const Color(0xFFD2EBED),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xFF012A4A),
              ),


              child: MaterialButton(
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute
                          (builder: (context)=> LoginScreen(),

                        ),
                      );
                    },
                  height: 40.0,
                  child: const Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                        color: Colors.white,



                ),
              ),
              ),

            ),




                    const SizedBox(
                      height: 20.0,
                    ),

                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Color(0xFF012A4A),
                      ),
                      child: MaterialButton(
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute
                              (builder: (context)=> SignUp(),

                            ),
                          );
                        },
                        height: 40.0,
                        child: const Text(
                          'انشاء الحساب',
                          style: TextStyle(
                            color: Colors.white,



                          ),
                        ),
                      ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        MaterialButton(
                            onPressed: () {

                              Navigator.push(
                                context,
                                MaterialPageRoute
                                  (builder: (context)=> Home(),
                                ),
                              );
                            },
                            child:
                            const Text('ضيف',
                              textDirection: TextDirection.rtl,
                            )

                        ),
                        const Text(
                          'استمر بصفتك', textDirection: TextDirection.rtl,),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                          color: Color(0xFF012A4A),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Flexible(
                                child: RichText(
                                textAlign: TextAlign.center,
                                  text: const TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ("هل أنت متخصص في الصحة العقلية؟ \n انضم إلى شبكتنا المتنامية اليوم"),
                                        style: TextStyle(
                                            color: Colors.yellow,
                                            fontWeight: FontWeight.bold,
                                            fontSize:16.0))]),),),
                                  const SizedBox(
                                    height: 10.0,
                                  ),]),

                                 Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:CrossAxisAlignment.center ,
                                    children: [
                                      ElevatedButton(
                                        child: const SizedBox(
                                          width: 75,
                                          child: Text(
                                            'انضم الان',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 10.0
                                            ),
                                          ),
                                        ),
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all(Color(0xFFD2EBED))),
                                        onPressed: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute
                                              (builder: (context)=> SignUpDoctor(),
                                            ),
                                          );
                                        },
                                      ),


                                  ElevatedButton(

                                    child: const SizedBox(
                                      width: 75,
                                      child: Text(
                                        "دخول الطبيب",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black ,
                                            fontSize:10.0
                                        ),
                                      ),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor:
                                        MaterialStateProperty.all(Color(0xFFD2EBED))),
                                    onPressed: () {

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute
                                          (builder: (context)=> LoginScreenDoctor(),
                                        ),
                                      );
                                    },
                                  )
                                    ],
                                  ),

                                ],
                              ),

                          ),
                        ),
                      ),


              ]),
            ),
          ),
        ),
      ),


    );
  }
}