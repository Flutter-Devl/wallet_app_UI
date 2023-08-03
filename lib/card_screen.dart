import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CARDS',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildCardContainer(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildCardContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromRGBO(102, 123, 155, 1),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                radius: 16,
                backgroundColor: Color.fromRGBO(97, 163, 136, 1),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              Text(
                "VISA",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              )
            ],
          ),
          const SizedBox(height: 32),
          const Text(
            "**** **** **** 5647",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              letterSpacing: 2.0,
            ),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildCardInfo("CARD HOLDER", "XXXXX XXXXX"),
              _buildCardInfo("EXPIRES", "X/XX"),
              _buildCardInfo("CVV", "XXX"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCardInfo(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.blue[100],
            fontWeight: FontWeight.w700,
            letterSpacing: 2.0,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[100],
            fontWeight: FontWeight.w700,
            letterSpacing: 2.0,
          ),
        ),
      ],
    );
  }
}
