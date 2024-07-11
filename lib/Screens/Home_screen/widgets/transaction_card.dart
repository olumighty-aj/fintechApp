import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String paymentname;
  final String typeofPayment;
  final int amount;
  final IconData icon;
  const TransactionCard({
    super.key,
    required this.paymentname,
    required this.typeofPayment,
    required this.amount,
    this.icon = Icons.payment,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
            backgroundColor:const Color.fromARGB(255, 236, 240, 239),
            child: getIcon(typeofPayment)),
        title: Text(
          paymentname,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        subtitle: Text(typeofPayment),
        trailing: Text(
          getFormattedAmount(amount, typeofPayment),
          style: const TextStyle(
              color: Color.fromARGB(158, 23, 27, 97),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Icon getIcon(String typeofPayment) {
    switch (typeofPayment) {
      case 'Transfer':
        return const Icon(
          Icons.swap_horiz,
          color: Colors.purple,
        );
      case 'Payment':
        return const Icon(
          Icons.payment,
          color: Colors.blue,
        );
      case 'Deposit':
        return const Icon(
          Icons.account_balance,
          color: Colors.green,
        );
      case 'Sent':
        return const Icon(
          Icons.arrow_upward,
          color: Colors.red,
        );
      case 'Airtime':
        return const Icon(
          Icons.card_giftcard,
          color: Color.fromARGB(255, 255, 234, 49),
        );
      default:
        return Icon(
          icon,
          color: Colors.grey,
        );
    }
  }

  String getFormattedAmount(int amount, String typeofPayment) {
    String formattedAmount = '\$$amount'.toString();
    if (typeofPayment == 'Deposit') {
      formattedAmount = '+$formattedAmount';
    } else if (typeofPayment == 'Sent') {
      formattedAmount = '-$formattedAmount';
    } else if (typeofPayment == 'Airtime') {
      formattedAmount = '-$formattedAmount';
    }
    return formattedAmount;
  }
}
