import 'package:apollo/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void  main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      //  scaffoldBackgroundColor:const  Color(0xfff0f2f9),
        scaffoldBackgroundColor: const  Color(0xffe2e4ec),
        primaryColor:const  Color(0xffe92525),
        dividerTheme: DividerThemeData(
          thickness: 1
        )
      ),
      // home Screen
      home: HomeScreen(),

    );
  }
}
