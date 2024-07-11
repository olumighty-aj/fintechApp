import 'package:fintechapp/Screens/Activity/widgets/bar_chart.dart';
import 'package:fintechapp/Screens/Activity/widgets/smartpay_card.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton.outlined(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Activity',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          IconButton.outlined(
              onPressed: () {}, icon: const Icon(Icons.more_horiz_outlined)),
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(15.0),
          child: Column(
            children: [
           const  SmartPayCard(),
            const  SizedBox(
                height: 20,
              ),
            const  TotalSpendingWithBarChart(),
             const SizedBox(
                height: 20,
              ),
            const  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transactions', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                  Row(children: [
                    Text('All', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                    Icon(Icons.keyboard_arrow_down, color:  Color.fromARGB(158, 23, 27, 97),)
                  ],)
              ],),
              ActivityTransactions()
            ],
          ),
        ),
      ),
    );
  }
}

class ActivityTransactions extends StatelessWidget {
  const ActivityTransactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(5, (index)=> Card(
        elevation: 1,
        margin: const EdgeInsets.all(10),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(.2),
            child: Icon(Icons.payment_rounded, color: Colors.blue,),
          ),
          title: const Text('Smartpay UI kit', style: TextStyle(fontWeight: FontWeight.w700),),
          subtitle: const Text('ui8.net', style: TextStyle(fontWeight: FontWeight.w700)),
          trailing: const Text('-\$92.56', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
        ),
                        )),
    ));
  }
}
