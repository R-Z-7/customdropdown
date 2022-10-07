// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:customdropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom DropdownButton"),
      ),

      body: Center(
        child: CustomDropDown(
          Items: ["1", "2", "3", "4"],
          hintName: 'List',
        ),
        // child: DropdownButton<String>(
        //   value: seletedItem,
        //   items: _size.map((String value) {
        //     return DropdownMenuItem<String>(
        //       value: value,
        //       child: Text(value),
        //     );
        //   }).toList(),
        //   onChanged: (_) {},
        // ),
      ),
      // body: Container(
      //   color: Colors.blueGrey,
      //   child: Column(
      //     children: [
      //       Row(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           DropdownButton(
      //               disabledHint: Text("Can't select"),
      //               items: _size
      //                   .map((e) => DropdownMenuItem(
      //                         child: Text(e),
      //                         value: e,
      //                       ))
      //                   .toList(),
      //               onChanged: (val) {}),
      //         ],
      //       ),
      //       ActionChip(
      //           avatar: CircleAvatar(
      //             backgroundColor: Colors.grey.shade800,
      //             child: const Text('AB'),
      //           ),
      //           label: const Text('Aaron Burr'),
      //           onPressed: () {
      //             print(
      //                 'If you stand for nothing, Burr, what’ll you fall for?');
      //           })
      //     ],
      //   ),
      // ),
    );
  }
}
