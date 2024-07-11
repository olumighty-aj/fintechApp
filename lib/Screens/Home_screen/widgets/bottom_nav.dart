
import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: (){}, 
           icon: const Column(
            children: [
              Icon(Icons.home,color: Color.fromARGB(158, 23, 27, 97)),
              Text('Home',style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: Color.fromARGB(158, 23, 27, 97) ))
            ],
           )),
           IconButton(
            onPressed: (){}, 
           icon: const Column(
            children: [
              Icon(Icons.credit_card,color: Color.fromARGB(158, 23, 27, 97)),
              Text('My Card',style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: Color.fromARGB(158, 23, 27, 97) ))
            ],
           )),
           FloatingActionButton(
            onPressed: (){},
            backgroundColor: const Color.fromARGB(158, 23, 27, 97),
            child: const Icon(Icons.qr_code_scanner, color: Colors.white,),
           ),
          IconButton(
            onPressed: (){}, 
           icon: const Column(
            children: [
              Icon(Icons.bar_chart,color: Color.fromARGB(158, 23, 27, 97)),
              Text('Activity',style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: Color.fromARGB(158, 23, 27, 97) ))
            ],
           )),
           IconButton(
            onPressed: (){}, 
           icon: const Column(
            children: [
              Icon(Icons.person,color: Color.fromARGB(158, 23, 27, 97)),
              Text('Profile', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: Color.fromARGB(158, 23, 27, 97) ),)
            ],
           )),
           
      ],),
    );
  }
}
