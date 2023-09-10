import 'package:flutter/material.dart';
import 'package:nice_lol_civil_war/core/router/route_config.dart';

void main() {
  runApp(const NiceLolCivilWar());
}

class NiceLolCivilWar extends StatelessWidget {
  const NiceLolCivilWar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorSchemeSeed: Colors.black,
      ),
      routerConfig: RouteConfig(context: context),
    );
  }
}
