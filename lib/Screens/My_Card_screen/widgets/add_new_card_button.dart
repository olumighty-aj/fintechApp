
import 'package:flutter/material.dart';

class AddNewCardButton extends StatelessWidget {
  const AddNewCardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.add),
      label: const Text(
        'Add New Card',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: Colors.grey[100]!),
        fixedSize: const Size(double.maxFinite, 58),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        backgroundColor: Colors.grey[100],
        foregroundColor: Colors.black
      ),
    );
  }
}
