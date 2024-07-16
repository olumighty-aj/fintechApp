import 'package:fintechapp/Screens/Home_screen/widgets/action_button.dart';
import 'package:fintechapp/Screens/Transfer_money/transfer_money_page.dart';
import 'package:flutter/material.dart';

class ActionButtonTab extends StatelessWidget {
  const ActionButtonTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 236, 240, 239),
            borderRadius: BorderRadius.circular(25)),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ActionButton_(
              icon: Icons.account_balance,
              label: 'Deposit',
              onPressed: (){},
            ),
            ActionButton_(
              icon: Icons.swap_horiz,
              label: 'Transfer',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TransferMoneyPage()));
              },
            ),
            ActionButton_(
              icon: Icons.attach_money,
              label: 'Withdraw',
              onPressed: () {},
            ),
            ActionButton_(
              icon: Icons.apps_sharp,
              label: 'More',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
