import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    customList(),
                    SizedBox(
                      height: 40,
                    ),
                    customList(),
                    customList(),
                    customList(),
                    customList(),
                    customList(),
                  ],
                ),
                Container(child: customList()),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static Container customList() {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 176, 191, 199),
      ),
    );
  }
}
