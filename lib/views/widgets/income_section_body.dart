import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/views/widgets/chart_details.dart';
import 'package:responsive_dashboard/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_chart.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    if (width >= SizeConfig.desktop && width < 1750) {
      return const Expanded(
          child: Padding(
        padding: EdgeInsets.all(50),
        child: DetailedIncomeChart(),
      ));
    } else {
      return const Row(
        children: [
          Expanded(child: IncomeChart()),
          Expanded(flex: 2, child: ChartDetails())
        ],
      );
    }
  }
}
