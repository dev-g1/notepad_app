import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_notepad/pages/notes_screen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _auth = FirebaseAuth.instance;
  User? user;
  String email = '';
  String password = '';

  getLoggedInUser(){
      
  }
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
              height: 15,
            ),
      
            TextField(
              obscureText: true,
              decoration: InputDecoration(
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
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) {
                          return NotesPage();
                        })));
                      }, 
                      child: Text('Sign In',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300, fontFamily: 'Georgia',
                      fontSize: 20),),
                     style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        side: BorderSide(color: Colors.black, width: 2),
                        backgroundColor: Colors.white,
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