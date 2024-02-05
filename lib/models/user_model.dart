import 'package:responsive_dashboard/utils/app_images.dart';

class UserModel {
  final String iconName, title, subTitle;

  UserModel(
      {required this.iconName, required this.title, required this.subTitle});
}

List<UserModel> usersList = [
  UserModel(
      iconName: Assets.imagesAvatar1,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail"),
  UserModel(
      iconName: Assets.imagesAvatar2,
      title: "Josua Nunito",
      subTitle: "Josh Nunito@gmail.com"),
  UserModel(
      iconName: Assets.imagesAvatar3,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail"),
];
