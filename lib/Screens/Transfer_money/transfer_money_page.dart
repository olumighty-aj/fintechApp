import 'package:fintechapp/Screens/Home_screen/widgets/master_card.dart';
import 'package:fintechapp/Screens/My_Card_screen/widgets/back_card.dart';
import 'package:fintechapp/Screens/My_Card_screen/widgets/front_card.dart';
import 'package:fintechapp/Screens/Transfer_money/top_up_page.dart';
import 'package:flutter/material.dart';

class TransferMoneyPage extends StatelessWidget {
  const TransferMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton.outlined(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Transfer',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 50,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Choose Card",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          3,
                          (index) => const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: MasterCardWidget(),
                              )),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Choose recipients",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search contacts",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(158, 23, 27, 97),
                            fontWeight: FontWeight.w300),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromARGB(158, 23, 27, 97),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          5,
                          (index) => Container(
                                margin: const EdgeInsets.all(8),
                                width: 130,
                                height: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: index == 0
                                            ? Colors.teal
                                            : Colors.grey)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    index == 0
                                        ? const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Icon(
                                                  Icons.check,
                                                  color: Colors.teal,
                                                )
                                              ],
                                            ),
                                          )
                                        : const SizedBox(),
                                    const SizedBox(
                                      height: 17,
                                    ),
                                    const CircleAvatar(
                                      radius: 50,
                                      backgroundImage:
                                          AssetImage("assets/profileimage.jpg"),
                                    ),
                                    const Text(
                                      "Ajayi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      "Olumide",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TopUpPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(158, 23, 27, 97),
                          foregroundColor: Colors.white,
                          fixedSize: const Size(double.maxFinite, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      child: Text(
                        'Continue',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 20),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
