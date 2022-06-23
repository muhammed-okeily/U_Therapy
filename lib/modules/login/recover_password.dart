
import 'package:cheer/shared/components/components.dart';
import 'package:flutter/material.dart';

import 'loginScreen.dart';

class RecoverPassword extends StatefulWidget {


  const RecoverPassword({key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _RecoverPasswordState();
  }
}

class _RecoverPasswordState extends State<RecoverPassword> {
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF012A4A),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: const Color(0xFFD2EBED),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.3,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const[
                              Text("هل نسيت كلمة السر؟",textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                  "لا تقلق! يحدث ذلك. الرجاء إدخال \n العنوان المرتبط بحسابك.",textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width - 40,
                          child: defaultForm(
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
                        )  ,
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: defaultButton(
                        radius: 15.0,
                        background: Color(0xFF012A4A),
                        function: () {
                          if (formKey.currentState!.validate()) {
                            print(emailController.text);
                          }
                        },
                        text: 'استعادة حساب',

                      ),
                    ),
                ]),
              ),

        ),
      ]),
    ),
    );
  }

}