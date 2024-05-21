import 'package:flutter/material.dart';

// ignore: camel_case_types
class historical_widget extends StatelessWidget {
  const historical_widget({
    super.key,
    required this.idTrans,
    required this.timeTrans,
    required this.mount,
  });

  final String idTrans;
  final String timeTrans;
  final String mount;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('+$mount USDT'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('From'),
            Text(idTrans),
            Text('${timeTrans}h ago'),
          ],
        ),
        const Divider()
      ],
    );
  }
}
