import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/desktop_mid_section.dart';
import 'package:responsive_dashboard/views/widgets/deskyop_trailsectio.dart';

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
              flex: 1,
              child: CustomDrawer(),
            ),
            const Expanded(
              flex: 2,
              child: DesktopMidSection(),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: DesktopTrailSection(),
              ),
            ),
          ],
        ));
  }
}
