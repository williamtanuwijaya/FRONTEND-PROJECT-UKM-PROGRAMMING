import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = "";

  void submitInput() async {
    if (_idController.text.isEmpty || _passwordController.text.isEmpty) {
      _errorText = "Input ID atau Password tidak boleh kosong";
      return;
    }

    final String _idSiswa = _idController.text;
    final String _password = _passwordController.text;  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDD0BD),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(19),
            margin: const EdgeInsets.symmetric(horizontal: 17, vertical: 161),
            decoration: BoxDecoration(
              color: const Color(0x7DFFFFFF),
              borderRadius: BorderRadius.circular(40)
            ),
            child: Column(
              children: [
                Image.asset("assets/images/logo.png", width: 132, height: 127),
                const SizedBox(height: 26),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3EEE7),
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _idController,
                    decoration: InputDecoration(
                      hintText: "ID Siswa",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(7), borderSide: BorderSide.none),
                      fillColor: const Color(0x4AFFFFFF),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3EEE7),
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(7), borderSide: BorderSide.none),
                      fillColor: const Color(0x4AFFFFFF),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    submitInput();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 33),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(7)
                    ),
                    child: const Text('LOGIN', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                ),
                const SizedBox(height: 33),
              ],
            ),
          ),
        ),
      ),
    );
  }
}