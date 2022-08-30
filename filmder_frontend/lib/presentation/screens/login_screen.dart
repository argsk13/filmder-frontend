// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:filmder_frontend/business_logic/bloc/auth_bloc.dart';
import 'package:filmder_frontend/presentation/screens/overview_screen.dart';
import 'package:filmder_frontend/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
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
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthError) {
              buildErrorLayout(context);
            } else if (state is AuthSucces) {
              clearData();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) => OverviewScreen()),
                ),
              );
            }
          },
          builder: (context, state) {
            return Center(
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
                  SizedBox(
                    child: Column(children: [
                      ElevatedButton.icon(
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/overview'),
                        icon: const Icon(Icons.movie_filter_outlined),
                        label: const Text('Log In'),
                        style: ElevatedButton.styleFrom(
                          primary:
                              Theme.of(context).primaryColor.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(height: 5),
                      CustomElevatedButton(
                          label: 'Login',
                          startColor: Theme.of(context).accentColor,
                          endColor: Theme.of(context).primaryColor,
                          textColor: Colors.white),
                      SizedBox(height: 5),
                      CustomElevatedButton(
                          label: 'Signup',
                          startColor: Theme.of(context).primaryColor,
                          endColor: Theme.of(context).accentColor,
                          textColor: Colors.white),
                    ]),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> buildErrorLayout(
      BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Please enter username/password!'),
      ),
    );
  }

  void clearData() {
    userName.clear();
    password.clear();
  }
}
