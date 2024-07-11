import 'package:flutter/material.dart';

class TimeOptionButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  const TimeOptionButton(
      {super.key,
      required this.label,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isSelected
                ? const Color.fromARGB(158, 23, 27, 97).withOpacity(0.5)
                : Colors.transparent),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 14, color: isSelected ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}

class TimeOptionRow extends StatefulWidget {
  const TimeOptionRow({super.key});

  @override
  State<TimeOptionRow> createState() => _TimeOptionRowState();
}

class _TimeOptionRowState extends State<TimeOptionRow> {
  String selectedPeriod = 'Week';

  final List<String> periods = ['Day', 'Week', 'Month', 'Year'];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: periods.map((period) {
        return TimeOptionButton(
            label: period,
            isSelected: selectedPeriod == period,
            onTap: () => setState(() {
                  selectedPeriod = period;
                }));
      }).toList(),
    );
  }
}
