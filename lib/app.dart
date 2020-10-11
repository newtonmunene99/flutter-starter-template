import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:starter/app/pages/splash/splash_page.dart';

import 'package:starter/config/flavors.dart';
import 'package:starter/config/theme.dart';
import 'package:starter/utils/flavor_banner.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

/// My root widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Injector(
      inject: const [],
      builder: (context) {
        return FlavorBanner(
          bannerConfig: BannerConfig(
            bannerName: FlavorConfig.instance.name,
            bannerColor: FlavorConfig.instance.color,
          ),
          child: MaterialApp(
            title: "MyApp",
            theme: buildLightTheme(context),
            darkTheme: buildDarkTheme(context),
            themeMode: ThemeMode.light,
            home: Navigator(
              pages: [
                MaterialPage(
                  child: SplashPageNavigator(),
                )
              ],
              onPopPage: (route, result) {
                if (!route.didPop(result)) return false;
                // Do something
                return true;
              },
            ),
          ),
        );
      },
    );
  }
}
