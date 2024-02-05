import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_mode.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class DrawerPagesList extends StatefulWidget {
  const DrawerPagesList({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  State<DrawerPagesList> createState() => _DrawerPagesListState();
}

class _DrawerPagesListState extends State<DrawerPagesList> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: widget.items.length,
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: DrawerItem(
              drawerItemModel: widget.items[index],
              isActive: activeIndex == index,
            ),
          );
        }));
  }
}
