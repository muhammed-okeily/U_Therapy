import 'package:cheer/chat/screens/Home.dart';
import 'package:cheer/modules/contact%20Us/Contact.dart';
import 'package:cheer/modules/contact%20Us/feedBack.dart';
import 'package:cheer/modules/start/start.dart';
import 'package:cheer/videocall/video%20call.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class More_doc extends StatefulWidget {
  const More_doc({Key? key}) : super(key: key);



  @override
  State<More_doc> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<More_doc> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Container(
        color:  const Color(0xFFD2EBED),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/logo.png'),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'الإعدادات',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,

                        fontSize:23.0,

                      ),),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.chat_outlined),
                    TextButton(onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute
                        (builder: (context)=>zoom(),
                      ),
                    );
                    },
                      child: const Text(
                        'فيديو',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:16.0,
                        ),),
                    ),
                  ],
                ),
                const Text('--------------------------------------------------'),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.wallet_giftcard_sharp),
                    TextButton(onPressed: () {},
                      child: const Text(
                        'محفظة',
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:16.0,
                      ),),
                    ),
                  ],
                ),
                const Text('--------------------------------------------------'),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.exit_to_app),
                    TextButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute
                          (builder: (context)=>start(),
                        ),
                      );
                    },
                      child: const Text(
                        'تسجيل خروج',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:16.0,
                      ),),),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment:CrossAxisAlignment.end ,
                  children: [
                    Row
                      (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment:CrossAxisAlignment.center ,
                      children: [
                        MaterialButton(
                            onPressed: () {

                              Navigator.push(
                                context,
                                MaterialPageRoute
                                  (builder: (context)=> const ContactUs(),
                                ),
                              );
                            },
                            child:
                            const Text('اتصل بنا')

                        ),
                        MaterialButton(
                            onPressed: () {

                              Navigator.push(
                                context,
                                MaterialPageRoute
                                  (builder: (context)=> FeedBack(),
                                ),
                              );
                            },
                            child:
                            const Text('ردود الفعل')

                        ),
                      ],
                    ),
                  ],
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
