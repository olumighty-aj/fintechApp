import 'package:fintechapp/Screens/My_Card_screen/widgets/add_new_card_button.dart';
import 'package:fintechapp/Screens/My_Card_screen/widgets/back_card.dart';
import 'package:fintechapp/Screens/My_Card_screen/widgets/front_card.dart';
import 'package:flutter/material.dart';

class MyCardScreen extends StatelessWidget {
  const MyCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton.outlined(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My Card',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 50,
            )
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              // Backcard
              BackCard(),
              SizedBox(
                height: 25,
              ),
              //Frontcard
            FrontCardWidget(),

              SizedBox(
                height: 40,
              ),
              //Add card
            AddNewCardButton()
            ],
          ),
        ),
      ),
    );
  }
}
