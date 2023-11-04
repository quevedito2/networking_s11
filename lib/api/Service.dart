import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:networking_s11/api/ListaUsuarios.dart';
import 'package:networking_s11/api/User.dart';

class Service {
  static Future<List<User>> getUsers() async {
    final rspta =
        await http.get(Uri.parse('https://reqres.in/api/users?page=1'));
    if (rspta.statusCode == 200) {
      final rsptaJson = json.decode(rspta.body);
      final todoUsers = ListaUsers.listado(rsptaJson['data']);
      return todoUsers;
    }
    return <User>[];
  }
}
