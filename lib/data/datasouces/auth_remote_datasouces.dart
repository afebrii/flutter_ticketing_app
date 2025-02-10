import 'dart:convert';

import 'package:flutter_ticketing_app/core/constants/variables.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  Future<String> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/login/google'),
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final token = jsonDecode(response.body)['token'];
      return token;
    } else {
      throw Exception('Failed to login');
    }
  }
}
