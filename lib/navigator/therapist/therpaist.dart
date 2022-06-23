


import 'package:cheer/models/doctor/doctor.dart';

import 'package:cheer/shared/components/Widget/widgets/doctorWidget.dart';
import 'package:cheer/shared/components/services/api.dart';

import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';



// ignore: camel_case_types, must_be_immutable
class therapist extends StatefulWidget {
 therapist({Key? key}) : super(key: key);

  @override
  State<therapist> createState() => _therapistState();
}

class _therapistState extends State<therapist> {
  final ApiService api = ApiService();
  GlobalKey<FormState> _oFormKey = GlobalKey<FormState>();

 TextEditingController? _controller;

 //String _initialValue;
 String _valueChanged = '';

 String _valueToValidate = '';

 String _valueSaved = '';

 final List<Map<String, dynamic>> _items = [
   {
     'value': 'المعالجين',
     'label': 'التوفر',

   },
   {
     'value': 'المعالجين',
     'label': 'سعر منخفض',

   },
   {
     'value': 'المعالجين',
     'label': 'اعلي سعر',

   },
   {
     'value': 'المعالجين',
     'label': 'تصنيف عالي',

   },
   {
     'value': 'المعالجين',
     'label': 'معدل منخفض',

   },
 ];

 @override
 void initState() {
   super.initState();

   //_initialValue = 'starValue';
   _controller = TextEditingController(text: '2');

   _getValue();
 }

 /// This implementation is just to simulate a load data behavior
 /// from a data base sqlite or from a API
 Future<void> _getValue() async {
   await Future.delayed(const Duration(seconds: 3), () {
     (() {
       //_initialValue = 'circleValue';
       _controller?.text = 'circleValue';
     });
   });
 }

 @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: const Color(0xFFD2EBED),
      child:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween
                ,

                children: [


                  SizedBox(
                    width: width * 0.9,
                    child: Form(
                      key: _oFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          SelectFormField(
                            type: SelectFormFieldType.dialog,
                            controller: _controller,
                            //initialValue: _initialValue,
                            icon: Icon(Icons.search),
                            hintText: ('بحث'),

                            changeIcon: true,

                            dialogCancelBtn: 'خروج',
                            enableSearch: true,
                            dialogSearchHint: 'البحث عن ',
                            items: _items,
                            onChanged: (val) => setState(() => _valueChanged = val),
                            validator: (val) {
                              setState(() => _valueToValidate = val ?? '');
                              return null;
                            },
                            onSaved: (val) => setState(() => _valueSaved = val ?? ''),
                          ),
                          SizedBox(height: 5),

                          SizedBox(height: 3),
                          SelectableText(_valueChanged),




                        ],
                      ),
                    ),
                  ),
                ],
              ),
              FutureBuilder<List<Doctor>>(
                future: api.getDoctors(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Doctor> _doctors = snapshot.data!;
                    return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        Doctor _doctor = _doctors[index];
                        return DoctorWidget(doctor: _doctor);
                      },
                      itemCount: _doctors.length,
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }

                  // By default, show a loading spinner.
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}
