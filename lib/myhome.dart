import 'package:flutter/material.dart';
import 'package:telegram/json/chat_json.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  ThemeData ubah = ThemeData.light();
  bool isDark = false;
  void _ubahTema() {
    setState(() {
      if (isDark) {
        ubah = ThemeData.light();
        isDark = false;
      } else {
        ubah = ThemeData.dark();
        isDark = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          const Icon(Icons.edit, color: Color.fromARGB(255, 255, 255, 255)),
      appBar: AppBar(
        title: const Text("Telegram"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: _ubahTema,
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            itemCount: chat_data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  chat_data[index]['name'],
                  style: const TextStyle(fontSize: 22.0, color: Colors.black),
                ),
                subtitle: Text(
                  chat_data[index]['text'],
                  style: const TextStyle(color: Colors.black),
                ),
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(chat_data[index]['img']),
                        // ignore: sort_child_properties_last
                        // ignore: unnecessary_const
                        // ignore: sort_child_properties_last
                        // ignore: unnecessary_const
                        // ignore: sort_child_properties_last, unnecessary_const
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          // ListTile(
          //   title: const Text(
          //     "Budi",
          //     style: TextStyle(
          //         fontSize: 22.0, color: Color.fromARGB(255, 255, 255, 255)),
          //   ),
          //   subtitle: const Text(
          //     "Pagi, euy ",
          //     style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          //   ),
          //   leading: Row(
          //     mainAxisSize: MainAxisSize.min,
          //     children: <Widget>[
          //       // ignore: avoid_unnecessary_containers
          //       Container(
          //         child: const CircleAvatar(
          //           backgroundImage: AssetImage("assets/harry.jpg"),
          //           // ignore: sort_child_properties_last
          //           // ignore: unnecessary_const
          //           // ignore: sort_child_properties_last
          //           // ignore: unnecessary_const
          //           // ignore: sort_child_properties_last, unnecessary_const
          //         ),
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
      drawer: Drawer(
        child:
            ListView(padding: const EdgeInsets.only(top: 0), children: <Widget>[
          // ignore: prefer_const_constructors
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Colors.blue),
            accountName: const Text(
              "Adityo Rahman",
              style: TextStyle(
                fontSize: 21.0,
              ),
            ),
            accountEmail: const Text("0816702042"),
            otherAccountsPictures: const <Widget>[
              Icon(
                Icons.brightness_3,
                color: Colors.white,
              ),
            ],
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage("assets/Adityo.jpg"),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text("New Group"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.lock_outline),
            title: const Text("New Secret Chat"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.create_new_folder),
            title: const Text("New Channel"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text("Contacts"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.call),
            title: const Text("Calls"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_border),
            title: const Text("Saved Messages"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {},
          ),
          const Divider(
            height: 18,
            color: Colors.black45,
          ),
          ListTile(
            leading: const Icon(Icons.person_add),
            title: const Text("Invite Friends"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text("Telegram FAQ"),
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}
