import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  static const routeName = '/resultScreen';

 const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final String nilai='100';
  final String nama='Saipul Simatupang';
  final String mapel='Menyimak';
  final String kelas='XXI Studio 2';
  final String nim='891273';

  @override
  Widget build(BuildContext context) {
    bool status=int.parse(nilai)>76;
    
    return Scaffold(
      backgroundColor: const Color(0xFFDDD0BD),
      body: SingleChildScrollView(
          child: Container(
             padding: const EdgeInsets.all(19),
            margin: const EdgeInsets.symmetric(horizontal: 17, vertical: 161),
            decoration: BoxDecoration(
                color: const Color(0x7DFFFFFF),
                borderRadius: BorderRadius.circular(40)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text('HASIL TEST',
                      style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                 ),
                 ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                        decoration: BoxDecoration(
                        color: Color.fromARGB(123, 191, 170, 170),
                         borderRadius: BorderRadius.circular(10)
                         ),
                      child: Text('$nilai', 
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                                       ),
                      ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                     child: Text('$nama', 
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                 ),
                    ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Mapel = $mapel', 
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                 ),
                  textAlign: TextAlign.left,
                    ),

                     SizedBox(
                      height: 10,
                    ),
                    Text('Kelas = $kelas', 
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                 ),
                 textAlign: TextAlign.left,
                    ),

                     SizedBox(
                      height: 10,
                    ),
                    Text('Nim = $nim', 
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                 ),
                 
                    ),

                     SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text('${status ? 'LULUS':'TIDAK LULUS'}', 
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                                       ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: (){
                        Navigator.pushNamed(context, '/dashboardScreen'); 
                      
                        }, 
                         style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 22, 37, 63), 
                        
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10)
                      ),
                      
                        child: Text('HOME',
                        style: TextStyle(
                          fontSize: 20,
                              color: Colors.white, fontWeight: FontWeight.bold),
                              
                        )
                        ),
                    )
                      

                  ],
                ),
          ),
      )
    );
  }
}