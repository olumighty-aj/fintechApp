
import 'package:fintechapp/Screens/Activity/widgets/time_option_button.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TotalSpendingWithBarChart extends StatelessWidget {
  const TotalSpendingWithBarChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.maxFinite,
      height: 350,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[400]!),
          borderRadius: BorderRadius.circular(17)),
      child: Column(
        children: [
          const Text(
            'Total Speding',
            style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            '\$17,420.00',
            style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          const TimeOptionRow(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: LineChart(
              LineChartData(
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(
                      leftTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false)),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              const tiles = [
                                'S',
                                'M',
                                'T',
                                'W',
                                'T',
                                'F',
                                'S'
                              ];
                              final index = value.toInt();
                              if (index > 0 && index < tiles.length) {
                                return Text(
                                  tiles[index],
                                  style: const TextStyle(
                                      color: Colors.grey),
                                );
                              }
                              return const Text('');
                            },
                            reservedSize: 22,
                            interval: 1),
                      ),
                      rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false)),
                      topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false))),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                        spots: [
                          const FlSpot(0, 2),
                          const FlSpot(1, 1),
                          const FlSpot(2, 4),
                          const FlSpot(4, 3),
                          const FlSpot(5, 6),
                          const FlSpot(6, 6),
                        ],
                        isCurved: true,
                        color: const Color.fromARGB(158, 23, 27, 97),
                        barWidth: 3,
                        dotData: const FlDotData(show: false),
                        belowBarData: BarAreaData(
                            show: true,
                            color:
                                const Color.fromARGB(158, 23, 27, 97)
                                    .withOpacity(0.1)))
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
