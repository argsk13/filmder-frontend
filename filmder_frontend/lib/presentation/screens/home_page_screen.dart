// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:filmder_frontend/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width / 0.75,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Center(
                  child: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg'),
                ),
              ),
              MaterialButton(
                elevation: 4,
                minWidth: 200,
                height: 50,
                onPressed: () => Navigator.of(context).pushNamed('/login'),
                color: Theme.of(context).primaryColor,
                child: const Text(
                  'Start!',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}
