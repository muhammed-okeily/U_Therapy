
import 'dart:convert';

import 'package:cheer/modules/login/recover_password.dart';

import 'package:cheer/shared/components/components.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../navigator/home/home.dart';
import '../sign up/SignUp.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

 void login( email , password) async{
    try{
      Response response = await post(Uri.parse('https://utherapy.herokuapp.com/mobAuth/login'),
          body: {
            'email' : email,
            'password' : password
          }
      );
      if (response.statusCode == 200){

        var data = jsonDecode(response.body.toString());
        print(data);
        print('login successfully');

      }
      else{
        print('your email or password is wrong');
      }
    }
    catch(e){
      print(e.toString());
    }

  }

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF012A4A),
      ),
      body:
      Container(
        color:  const Color(0xFFD2EBED),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                    image: AssetImage('assets/images/logo.png'),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    defaultForm(
                        onSubmit: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        controller: emailController,
                        type: TextInputType.emailAddress,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "يجب ألا يكون البريد الإلكتروني فارغًا";
                          }
                          return null;
                        },
                        LabelText: 'بريد الالكتروني ',
                        prefix: Icons.email),
                    const SizedBox(
                      height: 10.0,
                    ),
                    defaultForm(

                      onSubmit: (value) {
                        print(value);
                      },
                      onChanged: (value) {
                        print(value);
                      },
                      controller: passwordController,
                      type: TextInputType.visiblePassword,

                      validator: (value) {
                        if (value.isEmpty) {
                          return "كلمة المرور قصيرة جدًا";
                        }
                        return null;
                      },
                      LabelText:  'كلمه السر',
                      prefix: Icons.lock,
                      suffix:isPassword ? Icons.visibility : Icons.visibility_off ,
                      isPassword: isPassword,
                      suffixpressed: (){
                        setState(() {
                          isPassword = !isPassword;
                        });


                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                        GestureDetector(
                          onTap: (){
                            login(emailController.text.toString(), passwordController.text.toString());

                          },
                          child: defaultButton(






                            radius: 15.0,
                            background: Color(0xFF012A4A),



                              function: () {

                                if (formKey.currentState!.validate()) {
                                  print(emailController.text);
                                  print(passwordController.text);
                                  Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Home()));






                                }
                              },
                            onPressed: () {

                              Navigator.push(
                                context,
                                MaterialPageRoute
                                  (builder: (context)=> Home(),
                                ),
                              );
                            },





                              text: 'تسجيل الدخول',

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
                                  (builder: (context)=> const RecoverPassword(),
                                ),
                              );
                            },
                            child:
                            const Text("إعادة التعيين الآن", textDirection: TextDirection.rtl,)

                        ),
                        const Text(
                          'هل نسيت كلمة السر؟', textDirection: TextDirection.rtl,),
                      ],
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
                            const Text('ضيف', textDirection: TextDirection.rtl,)

                        ),
                        const Text(
                          "استمر بصفتك", textDirection: TextDirection.rtl,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                     MaterialButton(
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute
                          (builder: (context)=> SignUp(),
                        ),
                      );
                    },
                       child:
                       const Text('سجل الان', textDirection: TextDirection.rtl,)

                ),
                        const Text(
                          'ليس لديك حساب؟', textDirection: TextDirection.rtl,
                        ),
              ]
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
