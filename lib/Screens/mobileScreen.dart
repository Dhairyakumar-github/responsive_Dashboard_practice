import 'package:flutter/material.dart';
import 'package:responsive_practice_first/ui/dashboardContainer.dart';
import 'package:responsive_practice_first/ui/navbar.dart';
import 'package:responsive_practice_first/ui/sidebar.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Expanded(
            //   flex: 2,
            //   child: Sidebar(),
            // ),
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
