// ignore_for_file: library_private_types_in_public_api
import 'dart:math';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:wattpad/applemusic/loginn.dart';
import 'package:wattpad/home.dart';
import 'package:wattpad/settings.dart';
import 'package:wattpad/logon.dart';
import 'package:wattpad/navigation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:wattpad/subf/home_page.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  //MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'Wattpad',
        home:FutureBuilder(
          future: _fbApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('You have an error! ${snapshot.error.toString()}');
              return Text('Something went wrong!');
            } else if (snapshot.hasData) {
              return login();
            } else{
              return Center(
              child: CircularProgressIndicator(),
              );
    }

    }
        )
    );
  }
}

