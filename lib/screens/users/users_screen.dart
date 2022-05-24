import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:hydra/widgets/appbar_custom.dart';

import '../../generated/l10n.dart';

class UsersScreen extends StatefulWidget {
  static const routeName = '/users';
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  Map? data;
  List? usersData;

  getUsers() async {
    http.Response usuarios =
        await http.get(Uri.parse('https://bones.webmul.com/api/usuarios'));

    data = json.decode(usuarios.body);
    setState(() {
      usersData = data!['users'];
    });
  }

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: S.of(context).users,
        ),
        body: ListView.builder(
          itemCount: usersData == null ? 0 : usersData!.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Row(
                children: [
                  Text(usersData![index]["nombre"]),
                  ElevatedButton(onPressed: () {}, child: Text('Información'))
                ],
              ),
            );
          },
        ));
  }
}
