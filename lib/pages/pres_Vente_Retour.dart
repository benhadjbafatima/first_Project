import 'package:flutter/material.dart';
import 'package:gstockdz/pages/show_Client_Retour.dart';
import'package:gstockdz/pages/show_client.dart';
import'package:gstockdz/widgets.dart/in_Kwell_Custom.dart';

class PresVenteRetour extends StatelessWidget {
  const PresVenteRetour({super.key});

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
             InkwellF(label: "                                                                عرض العملاء ",Icon: Icons.list,callbackHandle: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const  ShowClientRetour()),
                );                },),
                  const SizedBox(height: 30,), 
                InkwellF(label: "                                                     عرض فواتير المرتجعات"  ,Icon: Icons.list,callbackHandle: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const ShowClient()),
                );                },),
                  
                  
                  
              
                         ],
      ),
      
      
      
      
      
      
      ),
    ),
    );
  }
}