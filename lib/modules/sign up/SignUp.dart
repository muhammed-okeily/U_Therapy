
import 'dart:convert';

import 'package:cheer/navigator/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:cheer/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../login/loginScreen.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  String _selectedGender = 'ذكر';


  void signup(String email , password, name) async{
    try{
      Response response = await put(Uri.parse('https://utherapy.herokuapp.com/mobAuth/signup'),
          body: {
            'email' : email,
            'name' : name,
            'password' : password
          }
      );
      if (response.statusCode == 200){
        var data = jsonDecode(response.body.toString());
        print(data);
        print('Sign up successfully');
      }
      else{
        print('failed');
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
    return  Scaffold(
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
                    SizedBox(
                      height: 20.0,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'انشاء حساب',textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:21.0,

                        ),),

                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    defaultForm(
                        onSubmit: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        controller: nameController,
                        type: TextInputType.name,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'يجب ألا يكون الاسم فارغًا';
                          }
                          return null;
                        },
                        LabelText: 'الاسم ',
                        prefix: Icons.edit_outlined),
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
                        controller: emailController,
                        type: TextInputType.emailAddress,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'يجب ألا يكون البريد الإلكتروني فارغًا';
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
                          return 'كلمة المرور قصيرة جدًا';
                        }
                        return null;
                      },
                      LabelText: 'كلمه السر',
                      prefix: Icons.lock,
                      suffix:isPassword ? Icons.visibility : Icons.visibility_off ,
                      isPassword: isPassword,
                      suffixpressed: (){
                        setState(() {
                          isPassword = !isPassword;
                        });

                      },
                    ),    SizedBox(
                      height: 20.0,
                    ),


                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(1),
                      child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text('ما هو جنسك؟',
                                style: TextStyle(color: Colors.blue),
                              ),
                              const Divider(thickness: 1.0,
                              indent: 20.0,),
                              ListTile(
                                leading: Radio<String>(
                                  value: 'الذكر',
                                  groupValue: _selectedGender,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedGender = value!;
                                    });
                                  },
                                ),
                                title: const Text('ذكر'),
                              ),
                              ListTile(
                                leading: Radio<String>(
                                  value: 'أنثى',
                                  groupValue: _selectedGender,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedGender = value!;
                                    });
                                  },
                                ),
                                title: const Text('أنثى'),
                              ),
                              ListTile(
                                leading: Radio<String>(
                                  value: 'أخرى',
                                  groupValue: _selectedGender,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedGender = value!;
                                    });
                                  },
                                ),
                                title: const Text('أخرى'),
                              ),
                              SizedBox(height: 25,
                                child: Divider(thickness: 1.0,)
                          ),


                    const Center(
                      child: Text(
                        'تاريخ ميلادك',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                SizedBox(
                  height: 200,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: DateTime(1969, 1, 1),
                    onDateTimeChanged: (DateTime newDateTime) {
                      // Do something
                    },
                  ),
                ),





                    GestureDetector(
                      onTap: (){
                        signup(emailController.text.toString(), nameController.text.toString(), passwordController.text.toString());
                      },
                      child: defaultButton(
                        radius: 15.0,
                        background: Color(0xFF012A4A),
                        function: () {
                          if (formKey.currentState!.validate()) {
                            print(nameController.text);
                            print(emailController.text);
                            print(passwordController.text);

                            print(_selectedGender);
                            Navigator.push(
                              context,
                              MaterialPageRoute
                                (builder: (context)=> Home(),
                              ),
                            );
                          }
                        },
                        text: 'إنشاء حساب',

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
                                  (builder: (context)=> LoginScreen(),
                                ),
                              );
                            },
                            child:
                            const Text('تسجيل الدخول',textDirection: TextDirection.rtl,)

                        ),
                        const Text(
                          'عضوا فعلا؟',textDirection: TextDirection.rtl,),
                      ],
                    ),


                  ],
                ),
              ),
           ] ),
          ),
        ),
      ),
    ),
      ),
    );
  }
}






