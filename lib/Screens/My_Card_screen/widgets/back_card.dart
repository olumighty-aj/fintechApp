import 'package:flutter/material.dart';

class BackCard extends StatelessWidget {
  const BackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: Image.asset(
                'assets/backpart.png',
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white.withOpacity(0.5),
                        ),
                        Transform.translate(
                          offset: const Offset(-10, 0),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white.withOpacity(0.5),
                          ),
                        )
                      ],
                    )
                  ],
                ),

              const  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '**** **** **** 8479',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '8/27',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                
              const  Text(
                      'Oladeji Raji',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
              ],
            ),
          )

        ],
      ),
    );
  }
}
