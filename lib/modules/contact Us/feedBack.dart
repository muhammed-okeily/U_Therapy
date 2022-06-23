
import 'package:cheer/shared/components/components.dart';
import 'package:flutter/material.dart';

import '../sign up/SignUp.dart';

class FeedBack extends StatefulWidget {

  @override
  State<FeedBack> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<FeedBack> {
  var emailController = TextEditingController();

  var CommentController = TextEditingController();

  var formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF012A4A),
        actions: [
          IconButton(
            icon: Icon(
                Icons.notifications_active
            ),
            onPressed: (){},),
        ],
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                    const Text(
                      ' ردود الفعل',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:30.0,

                      ),),
                    const SizedBox(
                      height: 21.0,
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
                        LabelText: 'عنوان بريد الكتروني ',
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
                      controller: CommentController,
                      type: TextInputType.visiblePassword,
                      LabelText: 'تعليقك',
                      prefix: Icons.comment,

                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                    defaultButton(
                      radius: 15.0,
                      background: Color(0xFF012A4A),
                      function: () {
                        if (formKey.currentState!.validate()) {
                          print(emailController.text);
                          print(CommentController.text);
                        }
                      },
                      text: 'إرسال',

                    ),

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
