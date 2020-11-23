import 'package:flutter/material.dart';
import 'package:states_flutter_app/src/pages/route_one_page.dart';
import 'package:states_flutter_app/src/pages/route_two_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'route_one',
      routes: {
        'route_one': ( _ ) => RouteOnePage(),
        'route_two': ( _ ) => RouteTwoPage(),
      },
    );
  }
}
