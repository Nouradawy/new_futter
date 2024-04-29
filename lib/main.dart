import 'package:flutter/material.dart';

import 'Home.dart';
import 'components/BlocObserver.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // DioHelper.dio;
  // await CacheHelper.init();
  // token = CacheHelper.getData(key: 'token');
  Widget Homescreen = Home();
  Bloc.observer = MyBlocObserver();
  runApp( MyApp(homeScreen: Homescreen));
}

class MyApp extends StatelessWidget  {
  final Widget homeScreen;
  MyApp({
    required this.homeScreen,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: homeScreen,
    );
  }
}


