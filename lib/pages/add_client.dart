import 'package:flutter/material.dart';
import 'package:gstockdz/widgets.dart/custom_text_field.dart';
import 'package:gstockdz/widgets.dart/drop_Down_Button.dart';

class AddClient extends StatefulWidget {
  AddClient({super.key});

  @override
  State<AddClient> createState() => _AddClientState();
}

class _AddClientState extends State<AddClient> {
  final formKey1 = GlobalKey<FormState>();

  String? selectedPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "اضافة عميل جديد",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 176, 171, 86),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'حفظ',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Form(
            key: formKey1,
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 09),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.person),

                        hintText:
                            '                                                              اسم العميل',

                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0), // تعديل ارتفاع الحقل

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(07),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    customtextfield(
                      label:
                          '                                                           باركود العميل',
                      icon: Icons.barcode_reader,
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    customtextfield(
                      label:
                          '                                                           عنوان العميل',
                      icon: Icons.home,
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    customtextfield(
                      label:
                          '                                                     رقم هاتف  العميل',
                      icon: Icons.phone,
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    dropDownButton(
                        selectedValue: selectedPrice,
                        labelText:
                            '                                                         سعر بيع للعميل',
                        items: [
                          "---",
                          "سعر البيع 1",
                          "سعر البيع 2",
                          "سعر البيع 3"
                        ]),
                    SizedBox(
                      height: 5,
                    ),
                    customtextfield(
                      label:
                          '                                      الرقم الضريبي للعميل(NIF)',
                      icon: Icons.numbers,
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    customtextfield(
                      label:
                          '                                                     رقم  المادة (AI) ',
                      icon: Icons.numbers,
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    customtextfield(
                      label:
                          '                                         رقم السجل التجاري (RC)',
                      icon: Icons.numbers,
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    customtextfield(
                      label:
                          '                                      رقم التعرف الاحصائي(NIS)',
                      icon: Icons.numbers,
                      controller: TextEditingController(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.money_off),
                        hintText:
                            '                                                             سقف العميل',
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(07),
                        ),
                        filled: true,
                        fillColor: Colors.lightBlue[50],
                      ),
                    ),
                    Center(
                        child: Container(
                      height: 28,
                      width: 200,
                      color: const Color.fromARGB(255, 192, 188, 188),
                      alignment: Alignment.center,
                      child: Text(
                        "الحد الاقصى للعميل من الفواتير الاجل",
                      ),
                    )),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.timelapse),
                        hintText:
                            '                                                             عدد الايام ',
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(07),
                        ),
                        filled: true,
                        fillColor: Colors.lightBlue[50],
                      ),
                    ),
                    Center(
                        child: Container(
                      height: 28,
                      width: 280,
                      color: Color.fromARGB(255, 187, 185, 185),
                      alignment: Alignment.center,
                      child: Text(
                        "    التنبيه في حال تاخر العميل عن السداد خلال المدة المحددة ",
                      ),
                    )),
                  ],
                )),
          )
        ])));
  }
}
