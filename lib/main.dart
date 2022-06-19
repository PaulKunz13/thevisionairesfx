  import 'dart:io';
  import 'package:flutter/services.dart';
  import 'package:flutter/material.dart';
  import 'package:splash_screen_view/SplashScreenView.dart';
  import 'package:supabase_flutter/supabase_flutter.dart';
  
  
  
  import 'package:myapp/src/pages/login/regristration/page.dart';
  import 'package:teta_cms/teta_cms.dart';

  ///NOTE:
  ///if you have an error while running <flutter run> 
  ///run <flutter pub upgrade> and than <flutter run --no-sound-null-safety>
  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    await TetaCMS.initialize(
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InBhdWxrdW56Y2hAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsInByb2plY3RzIjpbOTc5OTFdLCJpbWFnZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hL0FBVFhBSnhFU01DUkJiWk5QOGJXYXpubmVEVDZwaUtna0VvTzJtc0xvRm5VPXM5Ni1jIiwibmFtZSI6IlBhdWwgS3VueiIsImVtaXR0ZXIiOiJUZXRhLUF1dGgiLCJpYXQiOjE2NTU1NDEwMzIsImV4cCI6NDgxMTMwMTAzMn0.Os8YM2lrWA8coLIFwxJBSnBCx_8juSW_yAErl-gtEWk',
      prjId: 97991,
    );
    
      Supabase.initialize(
    url: 'https://ficgypsogumtyisfzgty.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZpY2d5cHNvZ3VtdHlpc2Z6Z3R5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NDU1MzYwMTAsImV4cCI6MTk2MTExMjAxMH0.ABPubQ95jpj7EoEoIKrFd857pyKv-oqJE2N0SVDBeW0',
  );
  
    
    
    runApp(MyApp());
  }
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'The Visionaries',
        home: SplashScreenView(
          navigateRoute: PageLoginRegristration(),
          duration: 2200,
          imageSize: 80,
          imageSrc: 'assets/teta-app.png',
          text: '',
          textType: TextType.NormalText,
          textStyle: TextStyle(
            fontSize: 30.0,
          ),
          backgroundColor: Colors.black,
        ),
      );
    }
  }
  