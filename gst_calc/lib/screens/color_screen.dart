import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  List colors = [
    Colors.black,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.pink,
    Colors.brown,
    Colors.purple,
    Colors.blue
  ];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2,
              ),
              itemCount: 8,
              itemBuilder: (context, index) =>
                  Container(color: colors[(index + i) % 8]),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                i++;
                setState(() {});
              },
              child: Text('Change'))
        ],
      ),
      //     Column(
      //   children: [
      //     Expanded(
      //         child: Container(
      //       color: colors[(i) % 4],
      //     )),
      //     Expanded(
      //         child: Container(
      //       color: colors[(i + 1) % 4],
      //     )),
      //     Expanded(
      //         child: Container(
      //       color: colors[(i + 2) % 4],
      //     )),
      //     Expanded(
      //         child: Container(
      //       color: colors[(i + 3) % 4],
      //     )),
      //     ElevatedButton(
      //       onPressed: () {
      //         i++;
      //         setState(() {});
      //       },
      //       child: Text('Change'),
      //     ),
      //   ],
      // ));
    );
  }
}
