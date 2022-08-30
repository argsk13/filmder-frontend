// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'presentation/router/router.dart';

void main() {
  runApp(FilmderApp(
    appRouter: AppRouter(),
  ));
}

class FilmderApp extends StatelessWidget {
  const FilmderApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, accentColor: Colors.amber,
        // colorScheme:
      ),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
