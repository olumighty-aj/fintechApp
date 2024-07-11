import 'package:fintechapp/Screens/Home_screen/widgets/action_button_tab.dart';
import 'package:fintechapp/Screens/Home_screen/widgets/appbar.dart';
import 'package:fintechapp/Screens/Home_screen/widgets/master_card.dart';
import 'package:fintechapp/Screens/Home_screen/widgets/transaction_card.dart';
import 'package:fintechapp/Screens/Home_screen/widgets/transaction_tab.dart';
import 'package:fintechapp/model/transaction_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Transaction> transactions = [
    Transaction(paymentName: 'MTN VTU', amount: 100, typeOfPayment: 'Airtime'),
    Transaction(paymentName: 'Gym', amount: 40, typeOfPayment: 'Payment'),
    Transaction(paymentName: 'Grocery', amount: 100, typeOfPayment: 'Transfer'),
     Transaction(paymentName: 'Adenubi Sola', amount: 400, typeOfPayment: 'Deposit'),
    Transaction(paymentName: 'Training', amount: 10, typeOfPayment: 'Sent'),
      Transaction(paymentName: 'United Bank of Africa', amount: 1000, typeOfPayment: 'Deposit'),
    Transaction(paymentName: 'To Grace Giwa', amount: 200, typeOfPayment: 'Sent'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(158, 23, 27, 97),
      body: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppbarWidget(),
              Expanded(
                  child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 167),
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        const ActionButtonTab(),
                        const SizedBox(
                          height: 20,
                        ),
                        const Transaction_Tab(),
                        Expanded(
                            child: ListView.builder(
                                itemCount: transactions.length,
                                itemBuilder: (context, index) {
                                  final transaction = transactions[index];
                                  return TransactionCard(
                                      paymentname: transaction.paymentName,
                                      typeofPayment: transaction.typeOfPayment,
                                      amount: transaction.amount);
                                }))
                      ],
                    ),
                  ),
                  const MasterCardWidget()
                ],
              ))
            ],
          )),
          
    );
  
  }
}
