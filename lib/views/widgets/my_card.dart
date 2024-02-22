import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage(Assets.imagesCardBackground)),
          color: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 24, bottom: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  "Name card",
                  style: AppStyles.styleRegular14(context)
                      .copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  "Syah Bandi",
                  style: AppStyles.styleMedium20(context),
                ),
              ),
              const Spacer(),
              Text(
                "0918 8124 0042 8129",
                style: AppStyles.styleMedium20(context),
              ),
              const Gap(12),
              Text(
                "12/20-124",
                style: AppStyles.styleRegular14(context)
                    .copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
