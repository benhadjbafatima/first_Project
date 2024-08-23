import 'package:flutter/material.dart';

class CustomImpot extends StatefulWidget {
  final String label;
  final String label2;

  const CustomImpot({
    Key? key,
    required this.label,
    required this.label2,
  }) : super(key: key);

  @override
  State<CustomImpot> createState() => _CustomImpotState();
}

class _CustomImpotState extends State<CustomImpot> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.check_box, color: Colors.greenAccent),
              onPressed: () {
                // Handle checkbox action
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Handle delete action
              },
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: '5'),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: widget.label2),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(hintText: widget.label),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
