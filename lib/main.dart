import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home: Test(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int top1 = 1;
  int top2 = 1;
  int low1 = 1;
  int low2 = 1;
  int sume = 0;
  String winner = '';

  void addTop1() {
    int TeamA = top1 + top2;
    int TeamB = low1 + low2;
    setState(() {
      sume = TeamA + TeamB;
      if (TeamA > TeamB) {
        winner = 'The winner is: Team A ';
        print('The sume of TeamA : $top1 + $top2 = $TeamA');
        print('The sum of losers : $low1 + $low2 = $TeamB');
      } else if (TeamB > TeamA) {
        winner = 'The winner is: Team B ';
        print('The sume of TeamB : $low1 + $low2 = $TeamB');
        print('The sume of losers : $top1 + $top2 = $TeamA');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 12, 12, 1),
      appBar: AppBar(
        elevation: 16,
        centerTitle: true,
        title: Text('Ludo App'),
        backgroundColor: const Color(0xff219ebc),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$winner',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(19),
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            print('Ludo tapped....');
                            top1 = Random().nextInt(6) + 1;
                            top2 = Random().nextInt(6) + 1;
                            low1 = Random().nextInt(6) + 1;
                            low2 = Random().nextInt(6) + 1;
                            addTop1();
                          });
                        },
                        child: Image.asset('images/dice$top1.png')),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          print('Ludo tapped....');
                          top1 = Random().nextInt(6) + 1;
                          top2 = Random().nextInt(6) + 1;
                          low1 = Random().nextInt(6) + 1;
                          low2 = Random().nextInt(6) + 1;
                          addTop1();
                        });
                      },
                      child: Image.asset('images/dice$top2.png'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          print('Ludo tapped....');
                          top1 = Random().nextInt(6) + 1;
                          top2 = Random().nextInt(6) + 1;
                          low1 = Random().nextInt(6) + 1;
                          low2 = Random().nextInt(6) + 1;
                          addTop1();
                        });
                      },
                      child: Image.asset('images/dice$low1.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          print('Ludo tapped....');
                          top1 = Random().nextInt(6) + 1;
                          top2 = Random().nextInt(6) + 1;
                          low1 = Random().nextInt(6) + 1;
                          low2 = Random().nextInt(6) + 1;
                          addTop1();
                        });
                      },
                      child: Image.asset('images/dice$low2.png'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
