import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Text("5",style: TextStyle(fontSize: 40),),
            ],
          )
        ],
      )
    );
  }
}