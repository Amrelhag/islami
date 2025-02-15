import 'package:flutter/material.dart';

import '../../../style/reusable_components/AssetsManager.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage(Assetsmanager.radio_Background),
              fit:BoxFit.fill)
      ),
    );
  }
}
