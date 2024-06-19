import 'package:flutter/material.dart';
import 'package:travel_app/viwes/home.dart';// import all widget from dart

void main() {
  runApp(const MyApp()); //run the app ,myapp as root
}
// This widget is the root of your application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(//starting point of your Flutter application.
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const Home (),
    );
  }
}

