// import 'package:flutter/material.dart';

// class Calculator extends StatefulWidget {
//   const Calculator({super.key});

//   @override
//   State<Calculator> createState() => _CalculatorState();
// }

// class _CalculatorState extends State<Calculator> {
//   Widget customButton(String custombtn) {
//     return Expanded(
//         child: OutlinedButton(
//             onPressed: () {},
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Text(
//                 "$custombtn",
//                 style: const TextStyle(
//                   fontSize: 25,
//                 ),
//               ),
//             )));
//   }

//   int? firstnum;
//   int? secondNum;
//   String? res;
//   void result() {}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Calculator"),
//         centerTitle: true,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Container(
//             padding: EdgeInsets.only(left: 100),
//             child: const Text(
//               "Output",
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Row(
//             children: [
//               // Padding(padding: EdgeInsets.all(25.0)),
//               customButton("9"),
//               customButton("8"),
//               customButton("7"),
//               customButton("+"),
//             ],
//           ),
//           Row(
//             children: [
//               // Padding(padding: EdgeInsets.all(25.0)),
//               customButton("6"),
//               customButton("5"),
//               customButton("4"),
//               customButton("-"),
//             ],
//           ),
//           Row(
//             children: [
//               // Padding(padding: EdgeInsets.all(25.0)),
//               customButton("3"),
//               customButton("2"),
//               customButton("1"),
//               customButton("/"),
//             ],
//           ),
//           Row(
//             children: [
//               // Padding(padding: EdgeInsets.all(25.0)),
//               customButton("C"),
//               customButton("E"),
//               customButton("0"),
//               customButton("*"),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
