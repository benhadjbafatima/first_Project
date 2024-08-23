import 'package:flutter/material.dart';
import 'package:gstockdz/pages/ventes.dart';

class ShowClient extends StatelessWidget {
  const ShowClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("عرض العملاء"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Ventes(),
                  ),
                );
              },
              child: const Text("hhhhh"),
            ),
          ],
        ),
      ),
    );
  }
}