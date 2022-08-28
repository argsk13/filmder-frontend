// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../widgets/input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late FocusNode userNameFocusNode;
  late FocusNode passwordFocusNode;
  late TextEditingController userName;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();
    userNameFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    userName = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    userNameFocusNode.dispose();
    passwordFocusNode.dispose();
    userName.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            InputField(
              label: 'Username',
              focusNode: userNameFocusNode,
              textEditingController: userName,
              icon: Icon(
                Icons.supervised_user_circle,
              ),
            ),
            InputField(
              label: 'Password',
              focusNode: passwordFocusNode,
              textEditingController: password,
              icon: Icon(
                Icons.lock_open_rounded,
              ),
            ),
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
