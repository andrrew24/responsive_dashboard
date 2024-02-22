import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/user_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/userinfo_listtile.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16(context),
        ),
        const Gap(12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: latestTranscList
                .map((e) =>
                    IntrinsicWidth(child: UserInfoListTile(userModel: e)))
                .toList(),
          ),
        ),
      ],
    );
  }
}
