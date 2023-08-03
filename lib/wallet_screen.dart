// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:wallet_app_ui/card_screen.dart';
import 'package:wallet_app_ui/home_screen.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  var screens = [
    const HomeScreen(),
    const CardScreen(),
  ];

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(38, 81, 158, 1),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Card"),
        ],
        onTap: (index) {
          setState(() {
            selectedTab = index;
          });
        },
        showUnselectedLabels: true,
        iconSize: 30,
      ),
      body: screens[selectedTab],
    );
  }
}
