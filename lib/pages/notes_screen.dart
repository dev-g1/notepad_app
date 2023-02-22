import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_notepad/pages/add_new_screen.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;
  String email = '';
  String password = '';

  void getCurrentUser() async {
    final user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Row(
            children: [
              Text(
                'my',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),
              ),
              Text('Notepad...',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600))
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Color.fromARGB(255, 235, 232, 232)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 30),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('My First Note',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20))),
                      style: OutlinedButton.styleFrom(
                        shadowColor: Colors.amber,
                        elevation: 0,
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide.none),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: FloatingActionButton(
                      backgroundColor: Colors.black,
                      onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return NewNote();
                      })),
                      );
                    },
                    child: Icon(
                        Icons.add,
                      )),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
