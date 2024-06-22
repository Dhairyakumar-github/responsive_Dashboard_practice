import 'package:flutter/material.dart';
import 'package:responsive_practice_first/responsive.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              !ResponsiveLayout.isDesktop(context)
                  ? IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        _scaffoldkey.currentState?.openDrawer();
                      },
                    )
                  : SizedBox(),
              customList(width: 170),
            ],
          ),
          Row(
            children: [
              customList(
                  width: !ResponsiveLayout.isMobile(context) ? 350 : w * .2),
              SizedBox(
                width: 10,
              ),
              // customList(width: 50),
              // SizedBox(
              //   width: 10,
              // ),
              // customList(width: 50),
              // SizedBox(
              //   width: 10,
              // ),
              customList(width: 50),
            ],
          ),
        ],
      ),
    );
  }

  static Container customList({double? width}) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      height: 50,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 176, 191, 199),
      ),
    );
  }
}
