
import 'package:flutter/material.dart';

class SmartPayCard extends StatelessWidget {
  const SmartPayCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            3,
            (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    width: 360,
                    decoration: BoxDecoration(
                        color: index % 2 == 0
                            ? const Color.fromARGB(158, 23, 27, 97)
                            : Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Text(
                            'Smartpay Cards',
                            style: TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                          const Spacer(),
                          const Text(
                            '**** 8990',
                            style: TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor:
                                      Colors.white.withOpacity(0.5),
                                ),
                                Transform.translate(
                                  offset: const Offset(-10, 0),
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor:
                                        Colors.white.withOpacity(0.5),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
