import 'package:flutter/material.dart';

import '../../../style/reusable_components/AssetsManager.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage(Assetsmanager.sebha_Background),
              fit:BoxFit.fill  )
      ),
    ) ;
  }
}
