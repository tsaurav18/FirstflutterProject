import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("saurav"),
            accountEmail: Text("tsaurav1711@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"),
            ),
          ),

          // DrawerHeader(
          //   child: Text(
          //     "hi i am drawer",
          //     style: TextStyle(color: Colors.white),
          //   ),

          //   decoration: BoxDecoration(color: Colors.purple),
          // ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("tsaurav18@gmail.com"),
            trailing: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
