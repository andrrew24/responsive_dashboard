import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/chart_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ChartDetailsItem extends StatelessWidget {
  const ChartDetailsItem({
    super.key,
    required this.chartDetails,
  });
  final ChartDetailsModel chartDetails;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        chartDetails.title,
        style: AppStyles.styleRegular12(context)
            .copyWith(color: const Color(0xff064061)),
      ),
      trailing: Text(
        chartDetails.trail,
        style: AppStyles.styleRegular14(context)
            .copyWith(color: const Color(0xff064061)),
      ),
      leading: Container(
        height: 12,
        width: 12,
        decoration:
            BoxDecoration(color: chartDetails.color, shape: BoxShape.circle),
      ),
    );
  }
}
