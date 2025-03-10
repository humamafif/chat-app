import 'package:chat_app/core/constants/string.dart';
import 'package:chat_app/core/utils/route_utils.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:
          (context, child) => MaterialApp(
            theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
            debugShowCheckedModeBanner: false,
            title: 'Chat App',
            initialRoute: routeSplash,
            onGenerateRoute: RouteUtils.onGenerateRoute,
          ),
    );
  }
}
