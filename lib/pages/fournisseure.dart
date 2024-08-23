import 'package:flutter/material.dart';
import 'add_fournisseur.dart';
import 'credit_client.dart';
import 'show_client.dart';
import'../widgets.dart/in_Kwell_Custom.dart';

class Fournisseure extends StatefulWidget {
  const Fournisseure({super.key});

  @override
  State<Fournisseure> createState() => _FournisseureState();
}

class _FournisseureState extends State<Fournisseure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0),),
              Row(
                children: [
                  const Text("     الموردين",style: TextStyle(fontSize: 40),),
                  const SizedBox(width: 50,),
                  Image.asset(
                'images/101.png',
                width: 110,
                height: 110,
                alignment: Alignment.topLeft),], 
                ),
                SizedBox(height: 50,),
                InkwellF(label: "                                                           اضافة مورد جديد",Icon: Icons.add,callbackHandle: (){
                  Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) =>   AddFournisseure()),
                );     
                },),
                  SizedBox(height: 30,),
                    InkwellF(label: "                                                              ديون  للموردين",Icon: Icons.money,callbackHandle: (){
Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) =>   CreditClient()),
                );                 },),
                SizedBox(height: 30,),  InkwellF(label: "                                                               عرض الموردين",Icon: Icons.search,
                callbackHandle: (){
Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) =>  const ShowClient()),
                );                 },),
                SizedBox(height: 30,),  InkwellF(label: "                                              كشف حساب مورد بالتفصيل",Icon: Icons.insert_chart,
                callbackHandle: (){
Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) =>  const ShowClient()),
                );                 },),
                SizedBox(height: 30,),  InkwellF(label: "                                                         تقرير بالفواتير لمورد ",Icon: Icons.insert_chart,
                callbackHandle: (){
Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) =>  const ShowClient()),
                );                 },),
                SizedBox(height: 30,),  InkwellF(label: "                                              تقرير بالفواتير لمورد اجمالي ",Icon: Icons.insert_chart,
                callbackHandle: (){
Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) =>  const ShowClient()),
                );                 },),
                SizedBox(height: 30,),  InkwellF(label: "                                              تقرير بالفواتير المرتجع لمورد ",Icon: Icons.insert_chart,
                callbackHandle: (){
Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) =>  const ShowClient()),
                );                 },),
                SizedBox(height: 30,),  InkwellF(label: "                                                تقرير بسندات القبض لمورد ",Icon: Icons.insert_chart,
                callbackHandle: (){
Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) =>  const ShowClient()),
                );                 },),
                SizedBox(height: 30,),  InkwellF(label: "          تقرير بحركة السداد للموردين على حسب طريقة الدفع  ",Icon: Icons.insert_chart,
                callbackHandle: (){
Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) =>  const ShowClient()),
                );                 },),


                
              



            ],
            
        )
      )));
  }
    
  }
