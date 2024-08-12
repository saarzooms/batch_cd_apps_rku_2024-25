import 'package:flutter/material.dart';

class GSTScreen extends StatefulWidget {
  const GSTScreen({super.key});

  @override
  State<GSTScreen> createState() => _GSTScreenState();
}

class _GSTScreenState extends State<GSTScreen> {
  TextEditingController txtAmnt = TextEditingController();
  TextEditingController txtPer = TextEditingController();
  TextEditingController txtTotalAmnt = TextEditingController();
  var igst = 0.0;
  var sgst = 0.0;
  var cgst = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GST Calc'),
      ),
      body: Column(children: [
        TextField(
          controller: txtAmnt,
          decoration:
              InputDecoration(hintText: 'Enter Amount', labelText: 'Amount'),
        ),
        TextField(
          controller: txtPer,
          decoration:
              InputDecoration(hintText: 'Enter GST %', labelText: 'GST%'),
        ),
        Text('CGST:$cgst'),
        Text('SGST:$sgst'),
        Text('IGST:$igst'),
        TextField(
          controller: txtTotalAmnt,
          decoration: InputDecoration(
              hintText: 'Enter Total Amount', labelText: 'Total Amount'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Calculate'),
        ),
      ]),
    );
  }
}
