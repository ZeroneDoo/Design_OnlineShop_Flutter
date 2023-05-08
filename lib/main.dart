import 'package:flutter/material.dart';
import 'constans.dart';
import 'Layouts/MainLayout.dart';
import 'Pages/DetailProductPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // onGenerateRoute: (RouteSettings settings) {
      //   if(settings.name == "/detailProduct"){
      //     return MaterialPageRoute(
      //       builder: (BuildContext context) => const DetailProductPage()
      //     );
      //   }
      // },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/" : (context) => const MainLayout(),
        '/detail/product' : (context) => const DetailProductPage(),
      },
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
      ),
    );
  }
}
