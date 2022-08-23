// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailtEditingController;
    final TextEditingController _passwordEditingController;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Discover, match. Filmder.',
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            Flexible(
              child: IconButton(
                  splashRadius: 25,
                  onPressed: () {},
                  icon: Icon(
                    Icons.movie_filter_rounded,
                  )),
            )
          ],
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('email'),
            const Text('password'),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.movie_filter_outlined),
              label: const Text('Log In'),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
