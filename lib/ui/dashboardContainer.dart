import 'package:flutter/material.dart';
import 'package:responsive_practice_first/responsive.dart';

class DashboardContainer extends StatelessWidget {
  const DashboardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
      child: Column(
        children: [
          SizedBox(
            width: w,
            // height: h * .45,
            child: !ResponsiveLayout.isMobile(context)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: customContainer(height: 300),
                        flex: 2,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      // Spacer(flex: 1),
                      Expanded(
                        child: customContainer(height: 300),
                        flex: 2,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      Expanded(
                        child: customContainer(height: 300),
                        flex: 2,
                      ),
                    ],
                  )
                : Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customContainer(height: 300),
                      SizedBox(
                        width: 10,
                      ),
                      // Spacer(flex: 1),
                      customContainer(height: 300),
                      SizedBox(
                        width: 10,
                      ),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      customContainer(height: 300),
                    ],
                  ),
          ),
          !ResponsiveLayout.isMobile(context)
              ? Container(
                  // height: h * 0.4,
                  constraints: BoxConstraints(minHeight: 300),
                  width: w,
                  child: Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: customContainer(height: 300, width: w),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: customContainer(height: 300, width: w),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(
                  // height: h * 0.4,
                  constraints: BoxConstraints(minHeight: 300),
                  width: w,
                  child: Expanded(
                    child: Column(
                      children: [
                        customContainer(height: 300, width: w),
                        SizedBox(
                          width: 10,
                        ),
                        customContainer(height: 300, width: w),
                      ],
                    ),
                  ),
                )
        ],
      ),
    );
  }

  static Container customContainer({double? width, double? height}) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: const Color.fromARGB(255, 176, 191, 199),
      ),
    );
  }
}
