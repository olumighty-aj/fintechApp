
import 'package:flutter/material.dart';

class Transaction_Tab extends StatelessWidget {
  const Transaction_Tab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [
          const Text('Today, Jul 20',
              style: TextStyle(
                  color:
                      Color.fromARGB(158, 23, 27, 97),
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
          Row(
            children: [
              Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          158, 23, 27, 97),
                      borderRadius:
                          BorderRadius.circular(30)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 15),
                    child: Center(
                      child: Text(
                        'All Transactions',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
