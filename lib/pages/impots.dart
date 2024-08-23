import 'package:flutter/material.dart';
import 'package:gstockdz/widgets.dart/Custom_Impot.dart';

class TaxPage extends StatefulWidget {
  @override
  _TaxPageState createState() => _TaxPageState();
}

class _TaxPageState extends State<TaxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TAX الضرايب'),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Text("النسبة%", textAlign: TextAlign.center)),
                      Expanded(
                          flex: 2,
                          child: Text(
                              "                                                    الاختصار",
                              textAlign: TextAlign.center)),
                      Expanded(
                          flex: 2,
                          child: Text("              اسم الضريبة",
                              textAlign: TextAlign.center)),
                    ],
                  ),
                  CustomImpot(label: 'ضريبة 1', label2: 'TAX1'),
                  CustomImpot(label: 'ضريبة2', label2: 'TAX2'),
                  CustomImpot(label: 'ضريبة3', label2: 'TAX3'),
                  CustomImpot(label: 'ضريبة4', label2: 'TAX4'),
                  CustomImpot(label: 'ضريبة5', label2: 'TAX5'),
                ]),
          ),
        ));
  }
}
