import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:list_maker/ui/home_page.dart';
import 'package:provider/provider.dart';
// import 'package:splashscreen/splashscreen.dart';
import 'data/model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final db = AppDatabase();
    return MultiProvider(
      providers: [
        Provider(
          // builder: (_) => db.checkListDao,
          create: (_) => db.checkListDao,
        ),
        Provider(
          // builder: (_) => db.itemListDao,
          create: (_) => db.itemListDao,
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
