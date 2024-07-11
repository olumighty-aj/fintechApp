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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SingleChildScrollView(
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
                                    Text(
                                      'Smartpay Cards',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    Spacer(),
                                    Text(
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
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400]!),
                    borderRadius: BorderRadius.circular(17)),
                child: Column(
                  children: [
                    Text(
                      'Total Speding',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 5,),
                    Text('\$17,420.00', style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w600
                  ),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
