import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Text("3",style: TextStyle(fontSize: 40),),
            ],
          )
        ],
      )
    );
  }
}