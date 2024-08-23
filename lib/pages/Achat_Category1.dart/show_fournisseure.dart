import 'package:flutter/material.dart';
import 'package:gstockdz/Models/client_model.dart';
import 'package:gstockdz/pages/Achat_Category1.dart/Achats.dart';

class ShowFournisseure extends StatelessWidget {
  final Client? client;

  const ShowFournisseure({Key? key, this.client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("عرض الموردين"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Achats(),
                ),
              );
            },
            child: Column(
              children: [
                Text('Name: ${client?.name ?? ""}',
                    style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),
                Text('Phone Number: ${client?.phoneNumber ?? ""}',
                    style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),
                Text('Address: ${client?.address ?? ""}',
                    style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ));
  }
}
