import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
         const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Good Morning!", style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w500
              ),
              ),
              Text("Oladeji Raji", style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
              ),
              
            ],
          ),
        const Spacer(),
          IconButton.outlined(
            onPressed: (){}, 
          icon: const Icon(Icons.notifications, color: Colors.white,))
        ],
    
      ),
    );
  }
}