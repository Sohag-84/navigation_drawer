import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigation_drawer/signup_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.only(top: 50),
          children:  [
            const CircleAvatar(
              backgroundImage: AssetImage('images/img.jpg'),maxRadius: 100,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text('Welcome Back',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text('Login into your existing account',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),
              ),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                  prefixIcon: const Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0,right: 12,),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(Icons.lock_open),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.only(right: 14),
              alignment: Alignment.centerRight,
              child: const Text('Forgot password?',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40),
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    shape: const StadiumBorder() //its used for border
                  ),
                  child: const Text('LOG IN')
              ),
            ),
            const SizedBox(height: 35,),
            const Center(child: Text('Or connect with')),
            const SizedBox(height: 16,),
            Container(
              padding: const EdgeInsets.only(left: 12,right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){},
                      child: Row(
                        children: const[
                          Icon(Icons.facebook_sharp),
                          SizedBox(width: 5,),
                          Text('Facebook')
                        ],
                      )
                  ),
                  SizedBox(width: width*.1,),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent
                      ),
                      child: Row(
                        children: const[
                          FaIcon(FontAwesomeIcons.google,),
                          SizedBox(width: 5,),
                          Text('Google')
                        ],
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text('Don\'t have an account?'),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const SignUpPage();
                    }
                    ));
                  },
                  child: const Text(' Signup',style: TextStyle(color: Colors.blue,fontSize: 17),),
                ),

              ],
            )
          ],
        )
      ),
    );
  }
}
