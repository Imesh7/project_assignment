import 'package:flutter/material.dart';
import 'package:project_assignment/provider/find_screen_provider.dart';
import 'package:project_assignment/utils/bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      
      providers: [
        ChangeNotifierProvider.value(value: FindScreenProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner:false,
        title: 'Project Assignment',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const BottomNavigationBarWidget(),
      ),
    );
  }
}
