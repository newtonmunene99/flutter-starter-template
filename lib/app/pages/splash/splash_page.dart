import 'package:flutter/material.dart';
import 'package:starter/app/pages/home/home_page.dart';

/// Splash page navigator
class SplashPageNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: Future.delayed(
          const Duration(seconds: 5),
          () => true,
        ),
        builder: (context, snapshot) {
          return Navigator(
            pages: [
              MaterialPage(
                child: SplashPage(),
              ),
              if (snapshot.hasData && snapshot.data)
                MaterialPage(
                  child: HomePage(),
                )
            ],
            onPopPage: (route, result) {
              if (!route.didPop(result)) return false;
              // Do something
              return true;
            },
          );
        });
  }
}

/// Splash page
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash"),
      ),
    );
  }
}
