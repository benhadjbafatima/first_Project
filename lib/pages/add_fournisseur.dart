import 'package:flutter/material.dart';
import 'package:gstockdz/pages/Achat_Category1.dart/show_fournisseure.dart';
import 'package:gstockdz/widgets.dart/custom_text_field.dart';
import 'package:gstockdz/Models/client_model.dart';

class AddFournisseure extends StatelessWidget {
  AddFournisseure({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("اضافة مورد جديد", style: TextStyle(fontSize: 25)),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 176, 171, 86),
        actions: [
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                final client = Client(
                  name: _nameController.text,
                  phoneNumber: _phoneController.text,
                  address: _addressController.text,
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShowFournisseure(client: client),
                  ),
                );
              }
            },
            child: Text('حفظ', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 9, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                customtextfield(
                  label: 'اسم العميل',
                  icon: Icons.person,
                  controller: _nameController,
                ),
                SizedBox(height: 20),
                customtextfield(
                  label: 'عنوان المورد',
                  icon: Icons.home,
                  controller: _addressController,
                ),
                SizedBox(height: 20),
                customtextfield(
                  label: 'رقم هاتف المورد',
                  icon: Icons.phone,
                  controller: _phoneController,
                ),
                SizedBox(height: 20),
                customtextfield(
                  label: 'الرقم الجبائي(NIF)',
                  icon: Icons.numbers,
                  controller: TextEditingController(),
                ),
                SizedBox(height: 20),
                customtextfield(
                  label: 'رقم المادة (AI)',
                  icon: Icons.numbers,
                  controller: TextEditingController(),
                ),
                SizedBox(height: 20),
                customtextfield(
                  label: 'رقم السجل التجاري (RC)',
                  icon: Icons.numbers,
                  controller: TextEditingController(),
                ),
                SizedBox(height: 20),
                customtextfield(
                  label: 'رقم التعرف الاحصائي(NIS)',
                  icon: Icons.numbers,
                  controller: TextEditingController(),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


