import 'package:exam1/views/screens/home_screen.dart';
import 'package:exam1/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'helper/cart_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();

  bool issplashscreenvisited = pref.getBool('issplashscreenvisited') ?? false;

  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MyApp(issplashscreenvisited: issplashscreenvisited),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool issplashscreenvisited;

  MyApp({required this.issplashscreenvisited});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: issplashscreenvisited ? '/' : 'splash',
      routes: {
        '/': (context) => HomePage(),
        'splash': (context) => SplashScreen(),
      },
    );
  }
}
