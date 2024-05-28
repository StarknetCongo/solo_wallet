import 'package:flutter/material.dart';

class CustomFloatingbutton extends StatelessWidget {
  const CustomFloatingbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: const SizedBox(
        height: 600,
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
            ),
            Icon(
              Icons.sync,
            ),
            Icon(
              Icons.settings,
            )
          ],
        ),
      ),
      onPressed: () {},
    );
  }
}
