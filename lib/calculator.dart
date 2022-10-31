import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var firstNum = 0;
  var secondNum = 0;
  var res = 0;
  final TextEditingController t1 = TextEditingController(text: '');
  final TextEditingController t2 = TextEditingController(text: '');

  // void initState() {myController.addListener(() {add(),})};
  // void calculator() {
  //   if(firstNum== "+"){
  //     res = firstNum + secondNum;
  //   }else if(firstNum == "-"){
  //     res = firstNum - secondNum;
  //   }else if(firstNum == "*"){
  //     res = firstNum *secondNum;
  //   }else if(firstNum == "/"){
  //     res = firstNum / secondNum;
  //   }else{

  //   }
  // }
  void addNumbers() {
    setState(() {
      firstNum = int.parse(t1.text);
      secondNum = int.parse(t2.text);

      res = firstNum + secondNum;

      // Text("{$myController.text}");
    });
  }

  void subtractNumbers() {
    setState(() {
      firstNum = int.parse(t1.text);
      secondNum = int.parse(t2.text);

      res = firstNum - secondNum;

      // Text("{$myController.text}");
    });
  }

  void multiplyNumbers() {
    setState(() {
      firstNum = int.parse(t1.text);
      secondNum = int.parse(t2.text);

      res = firstNum * secondNum;

      // Text("{$myController.text}");
    });
  }

  void divideNumbers() {
    setState(() {
      firstNum = int.parse(t1.text);
      secondNum = int.parse(t2.text);

      res = firstNum ~/ secondNum;

      // Text("{$myController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
        foregroundColor: Colors.green,
        shadowColor: Colors.green,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  res = 0;
                  t1.clear();
                  t2.clear();
                });
              },
              icon: const Icon(Icons.restore))
        ],
      ),
      backgroundColor: Colors.grey.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //OUTPUT
          Text(
            "OUTPUT: $res",
            style: TextStyle(
                fontSize: 30,
                color: Colors.green.shade400,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          // FIRST NUMBER TEXTFIELD
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: t1,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.green,
              decoration: const InputDecoration(
                hintText: 'Enter 1st Number',
                hintStyle: TextStyle(color: Colors.white30),
                fillColor: Colors.green,
              ),
            ),
          ),
          const SizedBox(height: 5),
          //SECOND NUMBER TEXTFIELD
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: t2,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.green,
              decoration: const InputDecoration(
                hintText: 'Enter 2nd Number',
                hintStyle: TextStyle(color: Colors.white30),
                fillColor: Colors.green,
                // border: OutlineInputBorder(
                //     borderSide: BorderSide(
                //       width: 2,
                //     ),
                // borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          //BUTTONS
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => addNumbers(),
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => subtractNumbers(),
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => multiplyNumbers(),
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "*",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => divideNumbers(),
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "/",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
