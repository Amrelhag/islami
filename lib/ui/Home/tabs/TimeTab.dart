import 'package:flutter/material.dart';

import '../../../style/reusable_components/AssetsManager.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage(Assetsmanager.time_Background),fit:BoxFit.fill )
      ),
    ) ;
  }
}
