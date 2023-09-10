import 'package:flutter/material.dart';

void main() {
  runApp(const NiceLolCivilWar());
}

class NiceLolCivilWar extends StatelessWidget {
  const NiceLolCivilWar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.black,
      ),
    );
  }
}
