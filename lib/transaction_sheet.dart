import 'package:flutter/material.dart';

class TransactionSheet extends StatelessWidget {
  const TransactionSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(243, 245, 248, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: const Text(
                    "Transactions",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                ListView.separated(
                  itemBuilder: (context, index) {
                    return buildTransactionItem(
                      "Payment",
                      "Payment from XXXX",
                      Icons.payments,
                      Colors.lightBlue.shade900,
                      "+\$1000",
                      "1 Jan",
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                  shrinkWrap: true,
                  itemCount: 2,
                  controller: ScrollController(keepScrollOffset: false),
                ),
              ],
            ),
          ),
        );
      },
      initialChildSize: 0.65,
      minChildSize: 0.65,
      maxChildSize: 1,
    );
  }

  Widget buildTransactionItem(String title, String subtitle, IconData icon,
      Color color, String amount, String date) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: <Widget>[
          Icon(icon, color: color),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[900],
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                amount,
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w700, color: color),
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
