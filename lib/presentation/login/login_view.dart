import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('login'),
          TextFormField(),
          ElevatedButton(onPressed: () {}, child: Text('login')),
        ],
      ),
    );
  }
}
