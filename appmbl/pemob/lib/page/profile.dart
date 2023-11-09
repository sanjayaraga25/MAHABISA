// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:pemob/main.dart';
import 'package:pemob/page/accountinfo.dart';
import 'package:pemob/page/aboutapp.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.fromLTRB(15, 50, 15, 20),
        // ignore: duplicate_ignore
        children: [
          const CircleAvatar(
            radius: 150,
            backgroundColor: Colors.purpleAccent,
            backgroundImage: NetworkImage(
                'https://cdn1.iconfinder.com/data/icons/user-pictures/101/malecostume-512.png'),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 10),
            child: const Center(
                child: Text(
              "Hey Sanjaya!",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )),
          ),
          const Center(
              child: Text(
            "I'm Diamond One",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
          )),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Divider(),
          ),
           ListTile(
            // ignore: prefer_const_constructors
            leading: Icon(Icons.person),
            // ignore: prefer_const_constructors
            title: Text("My Account Info"),
            onTap: () {
              Navigator.push(
                context,
                // ignore: prefer_const_constructors
                MaterialPageRoute(builder: (context) =>  AccountInfo()),
              );
            },
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const Divider(),
          const Divider(),
           ListTile(
            leading: Icon(Icons.info),
            title: Text("About This App"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  AboutApp()),
              );
            },
            trailing: Icon(Icons.arrow_forward_ios),
      ),
         
           Divider(),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomePage()),
                );
              },
              child: const Text(
                "Log Out",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}