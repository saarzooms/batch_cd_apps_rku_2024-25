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
  bool isRev = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GST Calc'),
      ),
      body: Column(children: [
        SwitchListTile(
          value: isRev,
          onChanged: (v) {
            isRev = v;
            setState(() {});
          },
          title: Text('isReverse'),
        ),
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
        Text('CGST:${cgst.toStringAsFixed(2)}'),
        Text('SGST:${sgst.toStringAsFixed(2)}'),
        Text('IGST:${igst.toStringAsFixed(2)}'),
        TextField(
          controller: txtTotalAmnt,
          decoration: InputDecoration(
              hintText: 'Enter Total Amount', labelText: 'Total Amount'),
        ),
        ElevatedButton(
          onPressed: () {
            if (isRev) {
              if (txtTotalAmnt.text.isNotEmpty && txtPer.text.isNotEmpty) {
                double amnt = double.parse(txtTotalAmnt.text) /
                    (1 + (double.parse(txtPer.text) * 0.01));
                igst = amnt * double.parse(txtPer.text) * 0.01;
                cgst = igst * 0.5;
                sgst = igst * 0.5;
                txtAmnt.text = (amnt).toStringAsFixed(2);
              }
            } else {
              if (txtAmnt.text.isNotEmpty && txtPer.text.isNotEmpty) {
                igst = double.parse(txtAmnt.text) *
                    double.parse(txtPer.text) *
                    0.01;
                cgst = igst * 0.5;
                sgst = igst * 0.5;
                txtTotalAmnt.text =
                    (double.parse(txtAmnt.text) + igst).toString();
              }
            }

            setState(() {});
          },
          child: Text('Calculate'),
        ),
      ]),
    );
  }
}
