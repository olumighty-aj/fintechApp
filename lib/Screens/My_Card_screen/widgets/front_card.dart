import 'package:flutter/material.dart';

class FrontCardWidget extends StatelessWidget {
  const FrontCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 20,
        left: 25,
        right: 25,
        child: Container(
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.black,
                      child: Stack(
                        children: [
                          Positioned(
                              top: 22,
                              left: 16,
                              child: Image.asset(
                                'assets/card.PNG',
                                width: 50,
                              )),
                          const Positioned(
                              bottom: 22,
                              left: 16,
                              child: Text(
                                '**** **** **** 8479',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400),
                              )),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: const Color.fromRGBO(7, 10, 61, 0.62),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Oladeji Raji',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '8/27',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
