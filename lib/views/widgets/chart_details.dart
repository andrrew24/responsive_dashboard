import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/chart_details_model.dart';
import 'package:responsive_dashboard/views/widgets/chart_details_item.dart';

class ChartDetails extends StatelessWidget {
  const ChartDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: chartDetailsList
          .map((e) => ChartDetailsItem(chartDetails: e))
          .toList(),
    );
  }
}
