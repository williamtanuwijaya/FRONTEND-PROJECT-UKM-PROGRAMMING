import 'dart:convert';

import 'package:http/http.dart' as http;

class Authentication {
  static String url = "http://127.0.0.1:8000/api";

  static Future<Map<String, dynamic>> login(
      String nisn, String password) async {
    final response = await http.post(Uri.parse('$url/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'nisn': nisn,
          'password': password,
        }));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return {
        "message": "Gagal Login",
      };
    }
  }
}
