import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  int i = 0;

  List questionList = [
    "1. Current finance minister of India?",
    "2. National Yoga is celebrated on which day?",
    "3. National animal of india?",
    "4. Who won the IPL 2022?",
    "5. Who is the CEO of Google?"
  ];

  List answerList = ["Nirmala Sitaraman","21 June","Peacock","Gujarat Titans","Sundar Pichai"];

  List aList = ["Nirmala Sitaraman","8th Sept","Lion","Chennai Super Kings","Andy Jassy"];
  List bList = ["Amit shah","20th Nov","Tiger","Mumbai Indians","Tim Cook"];
  List cList = ["Vivek Singh","21 June","Elephant","Gujarat Titans","Elon Musk"];
  List dList = ["Rajnath singh","22nd Nov","Zebra","Kings 11 Punjab","Sundar Pichai"];

  List useranswerList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF8EDE3),
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
          backgroundColor: Color(0xff85586F),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Color(0xffDFD3C3),
                alignment: Alignment.center,
                child: Text(
                  "${questionList[i]}",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          useranswerList.add("${aList[i]}");
                          if (useranswerList[i] == answerList[i]) {
                            Navigator.pushNamed(context, 'winner');
                            i++;
                            if(i==10)
                            {
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'output');
                            i=0;
                            useranswerList.clear();
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 55,
                        width: 250,
                        color: Colors.white,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 55,
                              width: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "A.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 200,
                              alignment: Alignment.center,
                              child: Text(
                                "${aList[i]}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          useranswerList.add("${bList[i]}");
                          if (useranswerList[i] == answerList[i]) {
                            Navigator.pushNamed(context, 'winner');
                            i++;
                            if(i == 10){
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'output');
                            i=0;
                            useranswerList.clear();
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 55,
                        width: 250,
                        color: Colors.white,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 55,
                              width: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "B.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 200,
                              alignment: Alignment.center,
                              child: Text(
                                "${bList[i]}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          useranswerList.add("${cList[i]}");
                          if (useranswerList[i] == answerList[i]) {
                            Navigator.pushNamed(context, 'winner');
                            i++;
                            if(i == 10){
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'output');
                            i=0;
                            useranswerList.clear();
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 55,
                        width: 250,
                        color: Colors.white,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 55,
                              width: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "C.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 200,
                              alignment: Alignment.center,
                              child: Text(
                                "${cList[i]}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          useranswerList.add("${dList[i]}");
                          if (useranswerList[i] == answerList[i]) {
                            Navigator.pushNamed(context, 'winner');
                            i++;
                            if(i == 10){
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'output');
                            i=0;
                            useranswerList.clear();
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 55,
                        width: 250,
                        color: Colors.white,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 55,
                              width: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "D.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 200,
                              alignment: Alignment.center,
                              child: Text(
                                "${dList[i]}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}