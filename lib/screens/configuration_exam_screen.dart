import 'package:flutter/material.dart';

class ConfirgurationExamScreen extends StatefulWidget {
  static const routeName = '/confirgurationExamScreen';

  const ConfirgurationExamScreen({super.key});

  @override
  State<ConfirgurationExamScreen> createState() => _ConfirgurationExamScreenState();
}

class _ConfirgurationExamScreenState extends State<ConfirgurationExamScreen> {
  final String tanggal='Jumat, 5 April 2024';
  final String waktu='15.00 - 17.00';
  final String durasi='90 Menit';
  final String namaTest = 'Matematika';

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xFFDDD0BD),
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
                      child: Text( '$namaTest' ,
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
                     child: Text('Tanggal = $tanggal', 
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                 ),
                    ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                     child: Text('Waktu = $waktu', 
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                 ),
                    ),
                    ),SizedBox(
                      height: 10,
                    ),
                    Center(
                     child: Text('Durasi = $durasi', 
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                 ),
                    ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: (){
                        Navigator.pushNamed(context, '/examScreen'); 
                      
                        }, 
                         style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 22, 37, 63), 
                        
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10)
                      ),
                      
                        child: Text('MULAI',
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