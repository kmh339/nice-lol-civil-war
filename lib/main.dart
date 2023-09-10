import 'package:flutter/material.dart';
import 'package:nice_lol_civil_war/presentation/login/login_view.dart';

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
      home: LoginView(),
    );
  }
}
