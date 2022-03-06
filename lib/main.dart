import 'package:flutter/material.dart';
import 'login_page.dart';

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
          children:   [
            const UserAccountsDrawerHeader(
                accountName: Text('Injamul Haq Sohag'),
                accountEmail: Text('Eastern University'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/99319134?s=400&u=33644532c0aec300daaa27a110c4a6d45cc3dfd4&v=4'),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
            ListTile(
              leading: const Icon(Icons.lock_open),
              title: const Text('Login'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const Login();
                })
                );
                setState(() {
                  
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Logout'),
              onTap: (){
                setState(() {

                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
