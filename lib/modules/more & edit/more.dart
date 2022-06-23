import 'package:cheer/chat/screens/Home.dart';
import 'package:cheer/videocall/video%20call.dart';



import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../contact Us/Contact.dart';
import '../contact Us/feedBack.dart';
import '../start/start.dart';
import 'user_profile.dart';
class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);



  @override
  State<More> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<More> {
  final List locale =[
    {'name':'ENGLISH','locale': Locale('en','US')},
    {'name':'arabic','locale': Locale('ar','')},
  ];
  updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
  }
  buildLanguageDialog(BuildContext context){
    showDialog(context: context,
        builder: (builder){
          return AlertDialog(
            title: Text('Choose Your Language'),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(child: Text(locale[index]['name']),onTap: (){
                        print(locale[index]['name']);
                        updateLanguage(locale[index]['locale']);
                      },),
                    );
                  }, separatorBuilder: (context,index){
                return Divider(
                  color: Colors.blue,
                );
              }, itemCount: locale.length
              ),
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF012A4A),
        actions: [
          IconButton(
            icon: const Icon(
                Icons.language_outlined
            ),
            onPressed: (){ buildLanguageDialog(context);},),
        ],
      ),
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
                      'إعدادات',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        fontSize:35.0,

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
                 const Icon(Icons.fact_check_outlined),
                 TextButton(   onPressed: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (_) => user_profile(),
                     ),
                   );
                 },
                   child: const Text(
                     'حساب شخصي',
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
                    TextButton(onPressed: () {

                    },
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
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => start()),
                            (Route<dynamic> route) => false,
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
