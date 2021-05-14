import "package:flutter/material.dart";

import 'package:flutter_application_1/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameContoller = TextEditingController();
  var myText = 'Change me';

  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("myapp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      subtitle: Text("ID:${data[index]["id"]}"),
                      leading: Image.network(data[index]["url"]),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameContoller.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
        backgroundColor: Colors.green,
      ),
    );
  }
}
