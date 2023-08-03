import 'package:flutter/material.dart';
import 'package:wallet_app_ui/wallet_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WalletScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
