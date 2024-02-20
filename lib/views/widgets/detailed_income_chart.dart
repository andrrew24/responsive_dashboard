import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            currentIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            radius: currentIndex == 0 ? 50 : 40,
            title: currentIndex == 0 ? "Design service" : "40%",
            titlePositionPercentageOffset: currentIndex == 0 ? 1.5 : null,
            titleStyle: AppStyles.styleRegular16(context)
                .copyWith(color: currentIndex == 0 ? null : Colors.white),
            value: 40,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            radius: currentIndex == 1 ? 50 : 40,
            title: currentIndex == 1 ? "Design product" : "25%",
            titlePositionPercentageOffset: currentIndex == 1 ? 1.5 : null,
            titleStyle: AppStyles.styleRegular16(context)
                .copyWith(color: currentIndex == 1 ? null : Colors.white),
            value: 25,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            radius: currentIndex == 2 ? 50 : 40,
            title: currentIndex == 2 ? "Product royalti" : "20%",
            titlePositionPercentageOffset: currentIndex == 2 ? 1.5 : null,
            titleStyle: AppStyles.styleRegular16(context)
                .copyWith(color: currentIndex == 2 ? null : Colors.white),
            value: 20,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            radius: currentIndex == 3 ? 50 : 40,
            title: currentIndex == 3 ? "Other" : "22%",
            titlePositionPercentageOffset: currentIndex == 3 ? 1.5 : null,
            titleStyle: AppStyles.styleRegular16(context)
                .copyWith(color: currentIndex == 3 ? null : Colors.white),
            value: 22,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
