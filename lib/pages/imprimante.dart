import 'package:flutter/material.dart';

class Imprimante extends StatefulWidget {
  Imprimante({super.key});

  @override
  _ImprimanteState createState() => _ImprimanteState();
}

class _ImprimanteState extends State<Imprimante> {
  final List<int> copies = [1, 2, 3, 4, 5];
  int selectedCopies = 1;

  String printerType = 'PDF';
  String paperSize = '80mm';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إعدادات الطابعه'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 176, 171, 86),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '                                               نوع الطابعه',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                height: 200,
                width: 350,
                color: Colors.grey[200],
                child: Column(
                  children: [
                    Row(
                      children: [
                        Radio<String>(
                          value: 'PDF',
                          groupValue: printerType,
                          onChanged: (value) {
                            setState(() {
                              printerType = value!;
                            });
                          },
                        ),
                        Text('PDF'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Bluetooth',
                          groupValue: printerType,
                          onChanged: (value) {
                            setState(() {
                              printerType = value!;
                            });
                          },
                        ),
                        Text('Bluetooth'),
                        Text('58/80mm'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'WIFI',
                          groupValue: printerType,
                          onChanged: (value) {
                            setState(() {
                              printerType = value!;
                            });
                          },
                        ),
                        Text('WIFI'),
                        Text('58/80mm'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'USB',
                          groupValue: printerType,
                          onChanged: (value) {
                            setState(() {
                              printerType = value!;
                            });
                          },
                        ),
                        Text('USB'),
                        Text('58/80mm'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'DC:0D:30:79:93:6E',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add search functionality here
                    },
                    child: Text('بحث'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Radio<String>(
                    value: '80mm',
                    groupValue: paperSize,
                    onChanged: (value) {
                      setState(() {
                        paperSize = value!;
                      });
                    },
                  ),
                  Text('80mm'),
                  SizedBox(width: 10.0),
                  Radio<String>(
                    value: '58mm',
                    groupValue: paperSize,
                    onChanged: (value) {
                      setState(() {
                        paperSize = value!;
                      });
                    },
                  ),
                  Text('58mm'),
                  SizedBox(width: 5),
                  Text('حجم ورق الطابعه الحراريه'),
                ],
              ),
              Text(
                  '                                                             نص اسفل فاتورة البيع'),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                  '                                                    نص اسفل التقارير قياس A4'),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 16.0),
              Text('موقع النص الارتفاع'),
              Container(
                height: 40,
                width: 100,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [],
              ),
              SizedBox(height: 16.0),
              Text('موديل الطابعه الحراريه'),
              DropdownButton<int>(
                value: 4,
                items: [1, 2, 3, 4, 5].map((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('$value'),
                  );
                }).toList(),
                onChanged: (value) {
                  // Handle change here
                },
              ),
              SizedBox(height: 16.0),
              Text('موديل طابعة الباركود'),
              DropdownButton<int>(
                value: 1,
                items: [1, 2, 3, 4, 5].map((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('$value'),
                  );
                }).toList(),
                onChanged: (value) {
                  // Handle change here
                },
              ),
              SizedBox(height: 16.0),
              Text('امر قص الورق'),
              DropdownButton<int>(
                value: 0,
                items: [0, 1, 2, 3, 4, 5].map((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text('$value'),
                  );
                }).toList(),
                onChanged: (value) {
                  // Handle change here
                },
              ),
              SizedBox(height: 32.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Save functionality here
                  },
                  child: Text('حفظ'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
