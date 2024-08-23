import 'package:flutter/material.dart';
import 'add_client.dart';
import 'credit_client.dart';
import 'show_client.dart';
import'package:gstockdz/widgets.dart/in_Kwell_Custom.dart';

class Clients extends StatelessWidget {
  const Clients({super.key});

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
                  const Text("     العملاء",style: TextStyle(fontSize: 40),),
                  const SizedBox(width: 50,),
                  Image.asset(
                'images/100.png',
                width: 110,
                height: 110,
                alignment: Alignment.topLeft),], ),
                SizedBox(height: 50,),
                InkwellF(label: "                                                           اضافة عميل جديد",Icon: Icons.add,callbackHandle: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>   AddClient()),
                );                },),
                  SizedBox(height: 30,),
                    InkwellF(label: "                                                                   ديون العملاء",Icon: Icons.money,callbackHandle: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CreditClient()),
                );                },),
                SizedBox(height: 30,), 
                 InkwellF(label: "                                                                   عرض العملاء",Icon: Icons.search,
                callbackHandle: (){
                     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const ShowClient()),
                );                   },),
                SizedBox(height: 30,),
                    InkwellF(label: "                                              كشف حساب عميل بالتفصيل ",Icon: Icons.insert_chart,callbackHandle: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CreditClient()),
                );                },),SizedBox(height: 30,),
                    InkwellF(label: "                                                           تقرير بالفواتير لعميل",Icon: Icons.insert_chart,callbackHandle: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CreditClient()),
                );                },),SizedBox(height: 30,),
                    InkwellF(label: "                                               تقرير بالفواتير لعميل اجمالي ",Icon: Icons.insert_chart,callbackHandle: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CreditClient()),
                );                },),SizedBox(height: 30,),
                    InkwellF(label: "                                              تقرير بالفواتير المرتجع لعميل ",Icon: Icons.insert_chart,callbackHandle: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CreditClient()),
                );                },),SizedBox(height: 30,),
                    InkwellF(label: "                                                تقرير بسندات القبض لعميل ",Icon: Icons.money,callbackHandle: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CreditClient()),
                );                },),SizedBox(height: 30,),
                    InkwellF(label: "             تقرير بحركة السداد للعملاء على حسب طريقة الدفع ",Icon: Icons.insert_chart,callbackHandle: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CreditClient()),
                );                },),

                
              



            ],
            
        )
      )));
  }
}