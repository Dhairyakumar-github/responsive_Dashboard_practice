import 'package:flutter/material.dart';
import 'package:responsive_practice_first/responsive.dart';
import 'package:responsive_practice_first/ui/dashboardContainer.dart';
import 'package:responsive_practice_first/ui/navbar.dart';
import 'package:responsive_practice_first/ui/sidebar.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (ResponsiveLayout.isDesktop(context))
              Expanded(
                flex: 2,
                child: Sidebar(),
              ),
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  Navbar(),
                  DashboardContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
