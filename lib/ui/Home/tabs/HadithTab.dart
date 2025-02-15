import 'package:flutter/material.dart';

import '../../../style/reusable_components/AssetsManager.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.center,
      children: [
    Container(
    child: Image.asset(Assetsmanager.ahadethBackground,fit:BoxFit.fill),
    ),
      ],
    );
  }
}
