import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/desktop_mid_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          children: [
            const Expanded(
              flex: 3,
              child: CustomDrawer(),
            ),
            const Expanded(
              flex: 5,
              child: DesktopMidSection(),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(color: Colors.red),
              ),
            ),
          ],
        ));
  }
}
