import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListOfUsers extends StatefulWidget {
  const ListOfUsers({Key? key}) : super(key: key);
  static const routeName = "/ListOfUsers";

  @override
  State<ListOfUsers> createState() => _ListOfUsersState();
}

class _ListOfUsersState extends State<ListOfUsers> {
  List allUsersList = [];

  Future getUsersData() async {
    const String url = 'https://reqres.in/api/users?page=2';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final responseBody = response.body;
    final json = jsonDecode(responseBody);
    setState(() {
      allUsersList = json['data'];
    });
  }

  @override
  void initState() {
    super.initState();
    getUsersData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All users'), centerTitle: true),
      backgroundColor: Colors.white,
      body: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: allUsersList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 2),
          itemBuilder: (context, index) {
            final allUsersInformation = allUsersList[index];
            final email = allUsersInformation['email'];
            final id = allUsersInformation['id'];
            final firstName = allUsersInformation['first_name'];
            final lastName = allUsersInformation['last_name'];
            final UsersProfilePhoto = allUsersInformation['avatar'];
            return Container(
              decoration: BoxDecoration(
                  color: Colors.yellow.shade100,
                  borderRadius: BorderRadius.circular(20)),
              width: 200,
              height: 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Text(id.toString()),
                Text("${firstName + lastName}"),
                Text(email),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(UsersProfilePhoto,
                        fit: BoxFit.cover, height: 150, width: 150)),
              ]),
            );
          }),
    );
  }
}
