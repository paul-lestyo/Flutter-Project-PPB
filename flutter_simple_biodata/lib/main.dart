import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Biodata',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("K3520061"),
          backgroundColor: Colors.redAccent),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: const <Widget>[
              ListTile(
                leading: Icon(Icons.list),
                title: Text("Lists"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("Login"),
              )
            ],
          ),
        ),
      ),
      body: const Center(
          child: Text(
        "Paulus Lestyo Adhiatma",
        style: TextStyle(fontSize: 28, fontStyle: FontStyle.italic),
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          const snackBar = SnackBar(content: Text("Fitur dalam pengembangan!"));

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        tooltip: "Cari data",
        icon: const Icon(Icons.search),
        label: const Text("Cari"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Tambah"),
          BottomNavigationBarItem(icon: Icon(Icons.delete), label: "Hapus")
        ],
      ),
    );
  }
}
