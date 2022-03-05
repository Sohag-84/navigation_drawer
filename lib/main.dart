import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation drawer'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black26,
        child: ListView(
          children:  const [
            UserAccountsDrawerHeader(
                accountName: Text('Injamul Haq Sohag'),
                accountEmail: Text('Eastern University'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/99319134?s=400&u=33644532c0aec300daaa27a110c4a6d45cc3dfd4&v=4'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
            ListTile(
              leading: Icon(Icons.lock_open),
              title: Text('Login'),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
