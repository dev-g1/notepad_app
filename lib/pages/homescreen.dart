import 'package:flutter/material.dart';
import 'package:my_notepad/constants.dart';
import 'package:my_notepad/pages/login_screen.dart';
import 'package:my_notepad/pages/sign_up_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset('assets/images/notepadlogo2.png', height: height * 0.6,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Text('my', 
                      style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25), ),
                    ),
                    Text('Notepad...', 
                    style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w600
                    )),
                    
                  ],
                )
              ],
            ),
      
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(builder: ((context) {
                          return SignUpPage();
                        })));
                    }, 
                    child: Text('Sign Up', 
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontFamily: 'Georgia',
                    fontSize: 20),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      shape: RoundedRectangleBorder(),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      elevation: 0,
                    ),),
                ),
                      SizedBox(width: 10,),
                Expanded(
                  child: OutlinedButton(
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(builder: ((context) {
                          return LoginPage();
                        })));
                    }, 
                    child: Text('Log In',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300, fontFamily: 'Georgia',
                    fontSize: 20),),
                   style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      padding: EdgeInsets.symmetric(vertical: 20),
                      side: BorderSide(color: Colors.black),
                      // backgroundColor: Colors.white,
                    ),
                    ),
                ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}