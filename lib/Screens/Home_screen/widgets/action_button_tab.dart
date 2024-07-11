
import 'package:fintechapp/Screens/Home_screen/widgets/action_button.dart';
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
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ActionButton_(
              icon: Icons.account_balance,
              label: 'Deposit',
            ),
            ActionButton_(
              icon: Icons.swap_horiz,
              label: 'Transfer',
            ),
            ActionButton_(
              icon: Icons.attach_money,
              label: 'Withdraw',
            ),
            ActionButton_(
              icon: Icons.apps_sharp,
              label: 'More',
            ),
            
            ],
        ),
      ),
    );
  }
}

