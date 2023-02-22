import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewNote extends StatefulWidget {
  const NewNote({super.key});

  @override
  State<NewNote> createState() => _NewNoteState();
}

class _NewNoteState extends State<NewNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Title...",
                hintStyle: TextStyle(color: Colors.black87),
               border: OutlineInputBorder(),
               contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2)
      
              ),
              )            
            ),
            
            SizedBox(
              height: 20,
            ),

            TextField(
              expands: true,
              minLines: null,
              maxLines: null,
              decoration: InputDecoration(
                hintText: "Your notes here..." ,
                hintStyle: TextStyle(color: Colors.black87,),
               border: OutlineInputBorder(),
               contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2)
                
              ),
              )            
            )
          ],
        ),
      ),
    );
  }
}