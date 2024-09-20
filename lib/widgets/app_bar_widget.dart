import 'package:flutter/material.dart';
import 'package:mecaro/resources/resources.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color.fromARGB(255, 29, 29, 29),
          width: double.infinity,
          height: 76,
          child: const Padding(
            padding: EdgeInsets.all(17.0),
            child: Image(image: AssetImage(Images.mecaroLogo)),
          ),
        ),
        Container(
          width: double.infinity,
          height: 4,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.tertiary,
            Theme.of(context).colorScheme.secondary,
          ])),
        )
      ],
    );
  }
}
