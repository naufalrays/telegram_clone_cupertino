import 'package:flutter/cupertino.dart';
import 'package:telegram/cupertino/cupertino_home.dart';

void main() {
  runApp(const CupertinoApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if (Platform.isIOS) {
    //   return const CupertinoHome();
    // } else {
    //   return const Home();
    // }
    return const CupertinoHome();
  }
}
