import 'package:flutter/material.dart';
import 'reusable.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        body: ListView(
          padding: const EdgeInsets.only(top: 50,left: 15,right: 15),
          children:  [
            Container(
                alignment: Alignment.centerLeft,
                child: const Icon(Icons.arrow_back,color: Colors.black,)
            ),
            SizedBox(height: height*0.05,),
            Column(
              children: const [
                Text('Let\'s get started!',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 23),),
                Text('Create an account to get all feature',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black26),),
              ],
            ),
            SizedBox(height: height*0.06,),
            ReusableTextField(labelText: 'Full name', hintText: 'Enter your full name', icon: const Icon(Icons.person)),
            SizedBox(height: height*0.014,),
            ReusableTextField(labelText: 'Username', hintText: 'Enter your username', icon: const Icon(Icons.person_rounded)),
            SizedBox(height: height*0.014,),
            ReusableTextField(labelText: 'Email', hintText: 'Enter your Email', icon: const Icon(Icons.email)),
            SizedBox(height: height*0.014,),
            ReusableTextField(labelText: 'Phone', hintText: 'Enter your Phone number', icon: const Icon(Icons.phone)),
            SizedBox(height: height*0.014,),
            ReusableTextField(labelText: 'Password', hintText: 'Enter the password', icon: const Icon(Icons.lock)),
            SizedBox(height: height*0.014,),
            ReusableTextField(labelText: 'Confirm Password', hintText: 'Confirm Password', icon: const Icon(Icons.lock)),

            SizedBox(height: height*0.014,),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shape: const StadiumBorder() //its used for border
                  ),
                  child: const Text('Create Account')
              ),
            ),
            SizedBox(height: height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text('Already have an account?'),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Text(' Login here',style: TextStyle(color: Colors.blue,fontSize: 17),),
                ),

              ],
            )

          ],
        ),
      ),
    );
  }
}
