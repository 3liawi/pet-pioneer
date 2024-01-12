import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_pioneer/screens/BookClinicScreen.dart';
import 'package:pet_pioneer/screens/HomeScreen.dart';
import 'package:pet_pioneer/utils/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pets App',
      theme: AppTheme.defineTheme(),
      home: const HomeScreen(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        BookClinicScreen.routeName: (context) => const BookClinicScreen(),
      },
    );
  }
}
