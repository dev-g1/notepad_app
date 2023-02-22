import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset('assets/images/notepadlogo2.png', height: MediaQuery.of(context).size.height*0.2,),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2)
                )
              ),
            ),
      
            SizedBox(
              height: 10,
            ),
      
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  
                ),
                hintText: 'Password',
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2)
                )
              ),
              
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Expanded(
                child: ElevatedButton(
                      onPressed: (){}, 
                      child: Text('Log In',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontFamily: 'Georgia',
                      fontSize: 20),),
                     style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        side: BorderSide(color: Colors.black),
                        backgroundColor: Colors.black,
                      ),
                      
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}