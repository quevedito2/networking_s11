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
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              var usuario = snapshot.data![index];
              return Container(
                height: 100,
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        width: 250,
                        child: Column(children: [
                          Text('ID: ${usuario.id}'),
                          Text('Last Name: ${usuario.lastName}'),
                          Text('First Name: ${usuario.firstName}'),
                          Text('Email: ${usuario.email}'),
                        ]),
                      ),
                      Image.network('${usuario.avatar}', width: 70, height: 50),
                    ],
                  )
                ]),
              );
            },
          );
        },
      ),
    );
  }
}
