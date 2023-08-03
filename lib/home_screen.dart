import 'package:flutter/material.dart';
import 'package:wallet_app_ui/transaction_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text(
          "\$2589.90",
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.notifications,
              color: Colors.lightBlue[100],
            ),
            const SizedBox(width: 16),
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.network(
                  'https://images.pexels.com/photos/247676/pexels-photo-247676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  fit: BoxFit.cover,
                  height: 50,
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget buildOption(String label, IconData icon, Color color) {
    return Column(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(243, 245, 248, 1),
            borderRadius: BorderRadius.all(Radius.circular(18)),
          ),
          padding: const EdgeInsets.all(12),
          child: Icon(icon, color: color, size: 30),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: Colors.blue[100],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildHeader(context),
                const Text(
                  "Available Balance",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
          const TransactionSheet(),
        ],
      ),
    );
  }
}
