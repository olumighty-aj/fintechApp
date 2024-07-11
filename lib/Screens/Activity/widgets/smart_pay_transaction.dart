
import 'package:flutter/material.dart';

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
            child: const Icon(Icons.payment_rounded, color: Colors.blue,),
          ),
          title: const Text('Smartpay UI kit', style: TextStyle(fontWeight: FontWeight.w700),),
          subtitle: const Text('ui8.net', style: TextStyle(fontWeight: FontWeight.w700)),
          trailing: const Text('-\$92.56', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
        ),
                        )),
    ));
  }
}
