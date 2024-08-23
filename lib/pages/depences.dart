import 'package:flutter/material.dart';
import 'package:gstockdz/pages/home2.dart';
import'package:gstockdz/widgets.dart/in_Kwell_Custom.dart';
import'package:gstockdz/pages/depances2.dart';


class Depences extends StatelessWidget {
  const Depences({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: Padding(padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Image.asset(
                  'images/5.png',
                  width: 250,
                  height: 150,
                  
                ),
             InkwellF(label: "                                                              اضافة مصروف",Icon: Icons.list,callbackHandle: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Depances2()),
                );                },),
                  const SizedBox(height: 30,), 
                InkwellF(label: "                                                             عرض المصاريف "  ,Icon: Icons.list,callbackHandle: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const home2()),
                );                },),
                 const  SizedBox(height: 30,)
                 ]
                 )
                 )
                )
                );
  }
}