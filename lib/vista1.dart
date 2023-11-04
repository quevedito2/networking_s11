import 'package:flutter/material.dart';
import 'package:networking_s11/api/Service.dart';

class vista1 extends StatelessWidget {
  const vista1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NETWORKING 2 - USERS'),
        backgroundColor: Colors.blueGrey,
      ),
      body: FutureBuilder(
        initialData: [],
        future: Service.getUsers(),
        builder: (context, AsyncSnapshot<List> snapshot) {
          
        },
      ),
    );
  }
}
