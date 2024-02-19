import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/desktop_mid_section.dart';
import 'package:responsive_dashboard/views/widgets/deskyop_trailsection.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: const Row(
          children: [
            Expanded(
              flex: 2,
              child: CustomDrawer(),
            ),
            Gap(32),
            Expanded(
                flex: 7,
                child: CustomScrollView(
                  slivers: [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: DesktopMidSection(),
                            ),
                            Gap(32),
                            Expanded(
                              flex: 3,
                              child: DesktopTrailSection(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}
