import 'package:responsive_dashboard/utils/app_images.dart';

class DrawerItemModel {
  final String title;
  final String iconAsset;

  DrawerItemModel({required this.title, required this.iconAsset});
}

List<DrawerItemModel> pagesList = [
  DrawerItemModel(title: "Dashboard", iconAsset: Assets.imagesDashboard),
  DrawerItemModel(
      title: "My Transaction", iconAsset: Assets.imagesMyTransctions),
  DrawerItemModel(title: "Statistics", iconAsset: Assets.imagesStatistics),
  DrawerItemModel(
      title: "Wallet Account", iconAsset: Assets.imagesWalletAccount),
  DrawerItemModel(
      title: "My Investments", iconAsset: Assets.imagesMyInvestments),
];

List<DrawerItemModel> optionsList = [
  DrawerItemModel(title: "Setting system", iconAsset: Assets.imagesSettings),
  DrawerItemModel(title: "Logout account", iconAsset: Assets.imagesLogout),
];
