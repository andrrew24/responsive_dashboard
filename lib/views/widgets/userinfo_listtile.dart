import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/user_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userModel,
  });

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: SizedBox(
          height: 48,
          width: 48,
          child: SvgPicture.asset(userModel.iconName),
        ),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            userModel.title,
            style: AppStyles.styleBold16(context),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            userModel.subTitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
