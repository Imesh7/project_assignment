import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
               Text("2",style: TextStyle(fontSize: 40),),
            ],
          )
        ],
      )
    );
  }
}