import 'package:de_fit_app/start_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(DeFit());
}

class DeFit extends StatefulWidget {
  const DeFit({super.key});

  @override
  State<DeFit> createState() => _DeFitState();
}

class _DeFitState extends State<DeFit> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartPage(),
    );
  }
}
