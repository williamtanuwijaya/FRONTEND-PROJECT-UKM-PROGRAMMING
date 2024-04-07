import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({super.key});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  bool isSelectA = false;
  bool isSelectB = false;
  bool isSelectC = false;
  bool isSelectD = false;
  bool isSelectE = false;

  void pilihJawaban(String pilihan) {
    setState(() {
      isSelectA = false;
      isSelectB = false;
      isSelectC = false;
      isSelectD = false;
      isSelectE = false;
    });

    if (pilihan == 'A') {
      setState(() {
        isSelectA = true;
      });
    }
    else if (pilihan == 'B') {
      setState(() {
        isSelectB = true;
      });
    }
    else if (pilihan == 'C') {
      setState(() {
        isSelectC = true;
      });
    }
    else if (pilihan == 'D') {
      setState(() {
        isSelectD = true;
      });
    }
    else if (pilihan == 'E') {
      setState(() {
        isSelectE = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDDD0BD),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/logo.png", width: 55, height: 53),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFF18273D),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Text('69 : 69', style: TextStyle(fontSize: 28  , color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                SizedBox(height: 23),
                Container(
                  padding: EdgeInsets.only(left: 26, right: 26, top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1 + 1 = ...', style: TextStyle(fontSize: 20),),
                      SizedBox(height: 24),
                      GestureDetector(
                        onTap: () {
                          pilihJawaban('A');
                        },
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(isSelectA ? 0xFF0000FF : 0xFF18273D),
                              ),
                              child: Text('A', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(width: 8),
                            Text('3', style: TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                      SizedBox(height: 14),
                      GestureDetector(
                        onTap: () {
                          pilihJawaban('B');
                        },
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(isSelectB ? 0xFF0000FF : 0xFF18273D),
                              ),
                              child: Text('B', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(width: 8),
                            Text('2', style: TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                      SizedBox(height: 14),
                      GestureDetector(
                        onTap: () {
                          pilihJawaban('C');
                        },
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(isSelectC ? 0xFF0000FF : 0xFF18273D),
                              ),
                              child: Text('C', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(width: 8),
                            Text('1', style: TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                      SizedBox(height: 14),
                      GestureDetector(
                        onTap: () {
                          pilihJawaban('D');
                        },
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(isSelectD ? 0xFF0000FF : 0xFF18273D),
                              ),
                              child: Text('D', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(width: 8),
                            Text('0', style: TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                      SizedBox(height: 14),
                      GestureDetector(
                        onTap: () {
                          pilihJawaban('E');
                        },
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(isSelectE ? 0xFF0000FF : 0xFF18273D),
                              ),
                              child: Text('E', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(width: 8),
                            Text('11', style: TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Text('< ', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: Color(0xFF18273D),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text('01', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),),
                          ),
                          GestureDetector(
                            child: Text(' >', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 33),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                    decoration: BoxDecoration(
                      color: Color(0xFF18273D),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Text('Pilih Soal', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}