import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab7/pages/secondpage.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({super.key});

  @override
  State<MyFirstPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyFirstPage> {
  String groupGender = "";
  bool genderCheck = false;

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    TextEditingController _wight = TextEditingController();
    TextEditingController _hight = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('คำนวนBMI'),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Text('คำนวนค่า BMI', textAlign: TextAlign.center),
          Text(
            'กรุณากรอกข้อมูล',
            textAlign: TextAlign.center,
          ),
          //-------------------------end text-------------------------

          Form(
            child: Row(
              children: [
                Text('กรุณากรอกเพศ'),
                Radio(
                  value: 'male',
                  groupValue: groupGender,
                  onChanged: ((value) {
                    setState(() {
                      groupGender = value!;
                    });
                  }),
                ),
                Text('ชาย'),
                Radio(
                  value: 'female',
                  groupValue: groupGender,
                  onChanged: ((value) {
                    setState(() {
                      groupGender = value!;
                    });
                  }),
                ),
                Text('หญิง'),
                Radio(
                  value: 'noTell',
                  groupValue: groupGender,
                  onChanged: ((value) {
                    setState(() {
                      groupGender = value!;
                    });
                  }),
                ),
                Text('ไม่ระบุ'),
              ],
            ),
          ),

          //-------------------------end Form -------------------------
          Form(
            child: Column(
              children: [
                Text('น้ำหนัก',textAlign: TextAlign.center),
                TextFormField(
                  controller: _wight,
                  keyboardType: TextInputType.number,
                  validator: (value1) {
                    if (value1!.isEmpty) {
                      return "Wight Field is empity";
                    }
                    return null;
                  },
                ),
                Text('ส่วนสูง', textAlign: TextAlign.center),
                TextFormField(
                  controller: _hight,
                  keyboardType: TextInputType.number,
                  validator: (value2) {
                    if (value2!.isEmpty) {
                      return "Hitght Field is empity";
                    }
                    return null;
                  },
                ),
              ],
            )
          ),

          //-------------------------end Form -------------------------

          ElevatedButton(
              onPressed: () {
                print(_wight);
                // if(_formkey.currentState!.validate()){
                //   Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //   builder: (context) => const MySecondPage()));
                // }
              },
              child: Text('คำนวน'))
          //-------------------------end Button-------------------------
        ],
      )
          //-------------------------end list view-------------------------
      ),
    );
  }
}
