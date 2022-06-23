import 'package:cheer/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Booking> {
  TextEditingController? _controller;
  TextEditingController? _controller2;

  var emailController = TextEditingController();

  var phoneController = TextEditingController();

  //String _initialValue;
  String _valueChanged = '';
  String _valueChanged2 = '';



  String _valueToValidate = '';
  String _valueToValidate2 = '';



  String _valueSaved = '';
  String _valueSaved2 = '';



   List<Map<String, dynamic>> day = [
    {
      'value': 'الاحد',
      'label': 'الاحد',
    },
    {
      'value': 'الخميس',
      'label': 'الخميس',
    },
    {
      'value': 'الاربعاء',
      'label': 'الاربعاء',
    },

  ];
   List<Map<String, dynamic>> time = [
    {
      'value': '4 pm - 5 pm',
      'label': '4 pm - 5 pm',
    },
    {
      'value': '6 pm - 7 pm',
      'label': '6 pm - 7 pm',
    },
    {
      'value': '8 pm - 9 pm',
      'label': ' 8 pm - 9 pm',
    },

  ];
  List<Map<String, dynamic>> payment = [
    {
      'value': '-سيتم إرسال رسالة برقم الطلب إلى عنوان البريد الإلكتروني ورقم الهاتف في الحقول أعلاه',
      'label': '-سيتم إرسال رسالة برقم الطلب إلى عنوان البريد الإلكتروني ورقم الهاتف في الحقول أعلاه',
    },
    {
      'value': '-اذهب إلى أقرب مزود خدمة فوري وأعطه رقم الطلب',
      'label': '-اذهب إلى أقرب مزود خدمة فوري وأعطه رقم الطلب',
    },
    {
      'value': '-رمز الخدمة 788 في حالة طلب المزود',
      'label': ' -رمز الخدمة 788 في حالة طلب المزود',
    },
    {
      'value': '-يجب تأكيد الحجز تلقائيًا في غضون 10 دقائق ، إذا كان خلاف ذلك ، يرجى الاتصال بخدمة العملاء',
      'label': ' -يجب تأكيد الحجز تلقائيًا في غضون 10 دقائق ، إذا كان خلاف ذلك ، يرجى الاتصال بخدمة العملاء',
    },

  ];


  /// This implementation is just to simulate a load data behavior
  /// from a data base sqlite or from a API


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF012A4A),
      ),
      body: Container(
        color: const Color(0xFFD2EBED),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'حجز الجلسة',textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:24.0,

                          ),),

                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SelectFormField(
                      type: SelectFormFieldType.dialog,
                      controller: _controller,
                      //initialValue: _initialValue,
                      labelText: ('اختر اليوم المتاح '),

                      changeIcon: true,
                      dialogSearchHint: 'اختر اليوم المتاح',
                      items: day,
                      onChanged: (val) => setState(() => _valueChanged = val),
                      validator: (val) {
                        setState(() => _valueToValidate = val ?? '');
                        return null;
                      },
                      onSaved: (val) => setState(() => _valueSaved = val ?? ''),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SelectFormField(
                      type: SelectFormFieldType.dialog,
                      controller: _controller2,
                      //initialValue: _initialValue,
                      hintText: ('اختر الوقت المتاح '),

                      changeIcon: true,

                      dialogSearchHint: 'اختر الوقت المتاح  ',
                      items: time,
                      onChanged: (val) => setState(() => _valueChanged2 = val),
                      validator: (val) {
                        setState(() => _valueToValidate2 = val ?? '');
                        return null;
                      },
                      onSaved: (val) => setState(() => _valueSaved2 = val ?? ''),
                    ),

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
                      type: TextInputType.visiblePassword,
                      LabelText: 'عنوان البريد الاكتروني',
                      prefix: Icons.comment,

                    ),

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
                      controller: phoneController,
                      type: TextInputType.visiblePassword,
                      LabelText: 'رقم التليفون',
                      prefix: Icons.comment,

                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                              ),
                              color: Color(0xFF012A4A),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Flexible(
                                        child: RichText(
                                          textAlign: TextAlign.end,
                                          text: const TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        '''\n\ سيتم إرسال رقم مرجعي إلى رقم هاتفك والبريد الإلكتروني الخاص بك. يرجى ملاحظة أنه ستتم إضافة مبلغ إضافي لضريبة القيمة المضافة بنسبة 14٪. كما سيتم إضافة رسوم خدمة فوري. لتجنب هذه الرسوم ، لا تتردد في استخدام طريقة دفع بديلة مثل   بطاقات الائتمان  ''',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12.0)),
                                                TextSpan(
                                                    text:
                                                    '''\n\nطريقة الدفع عن طريق بطاقات الائتمان''',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 23.0)),
                                                TextSpan(
                                                    text:
                                                    '''\n\n سيتم إرسال رسالة برقم الطلب إلى عنوان البريد الإلكتروني ورقم الهاتف في الحقول أعلاه - ''',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12.0)),
                                                TextSpan(
                                                    text:
                                                    '''\n\nاذهب إلى أقرب مزود خدمة فوري وأعطه رقم الطلب - ''',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12.0)),
                                                TextSpan(
                                                    text:
                                                    '''\n\n رمز الخدمة 788 في حالة طلب المزود - ''',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12.0)),
                                                TextSpan(
                                                    text:
                                                    '''\n\n يجب تأكيد الحجز تلقائيًا في غضون 10 دقائق - ''',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12.0)),
                                              ]),
                                        ),
                                      ),
                                    ]),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30.0),
                                          bottomRight: Radius.circular(30.0),
                                        ),
                                        color: Color(0xFFD2EBED),
                                      ),
                                      child: MaterialButton(
                                          onPressed: () {
                                            // notification
                                            // Navigator.push(context, MaterialPageRoute(builder: (context)=> Payment(),),);
                                          },
                                          child: const Text('احجز الان',
                                              style:
                                                  TextStyle(fontSize: 16.0))),
                                    ),
                                  ],
                                ),
                              ]),
                            )))
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
