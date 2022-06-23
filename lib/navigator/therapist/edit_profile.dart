
import 'package:flutter/cupertino.dart';
import 'package:cheer/shared/components/components.dart';
import 'package:flutter/material.dart';



class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);



  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<EditProfile> {
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();


  String _selectedGender = 'ذكر';


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
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Stack(
                            children: [
                              CircleAvatar(
                                  radius: 70,
                                  backgroundColor: Colors.white,
                                  child: ClipOval(
                                    child: Image.asset(
                                      "assets/images/doctor.jpeg",
                                      fit: BoxFit.cover,
                                      height: 140,
                                      width: 140,
                                    ),
                                  )),
                              Positioned(
                                  bottom: 0,
                                  right: -20,
                                  child: RawMaterialButton(
                                    onPressed: () {},
                                    elevation: 2.0,
                                    fillColor: Color(0xFFF5F6F9),
                                    child: Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.blue,
                                    ),
                                    padding: EdgeInsets.all(10.0),
                                    shape: CircleBorder(),
                                  )),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'انشاء حساب  كطبيب',textDirection: TextDirection.rtl,
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
                      ),
                      SizedBox(
                        height: 11,
                      ),

                      defaultForm(
                        LabelText: 'حول عني ',
                        decoration: (InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                        )),
                      ),
                      SizedBox(
                        height: 11,
                      ),

                      defaultForm(
                        LabelText:"اسم الوظيفة",
                        decoration: (InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                        )),
                      ),
                      SizedBox(
                        height: 11,
                      ),

                      defaultForm(
                        LabelText:"اسم الدولة",
                        decoration: (InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                        )),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      defaultForm(
                        LabelText: "العنوان",
                        decoration: (InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                        )),
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

















                            defaultButton(
                              radius: 15.0,
                              background: Color(0xFF012A4A),
                              function: () {
                                if (formKey.currentState!.validate()) {
                                  print(nameController.text);
                                  print(emailController.text);
                                  print(passwordController.text);

                                  print(_selectedGender);
                                }
                              },
                              text: 'تم',
                              onPressed: () {
                                {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      backgroundColor: Colors.green,
                                      content: Text("تمت العملية بنجاح"),
                                    ),
                                  );
                                }
                                ;
                              },

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






