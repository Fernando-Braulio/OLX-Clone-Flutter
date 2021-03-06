import 'package:flutter/material.dart';
import 'file:///C:/Users/ferna/Desktop/Codigos/xlo/lib/screens/base/base_screen.dart';
import 'package:provider/provider.dart';
import 'package:xlo/blocs/drawer_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<DrawerBloc>(
          create: (_) => DrawerBloc(),
          dispose: (context, value) => value.dispose(),
        )
      ],
      child: MaterialApp(
        title: 'OLX',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BaseScreen(),
      ),
    );
  }
}
