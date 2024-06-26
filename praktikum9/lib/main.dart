import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paktikum9/bloc/register/register_cubit.dart';
import 'package:paktikum9/firebase_options.dart';
import 'package:paktikum9/ui/home_screen.dart';
import 'package:paktikum9/ui/login.dart';
// ignore: unused_import
import 'package:paktikum9/ui/register.dart';
// ignore: unused_import
import 'package:paktikum9/ui/splash.dart';
import 'package:paktikum9/utils/routes.dart';
import 'package:paktikum9/bloc/login/login_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => RegisterCubit())
      ],
      child: MaterialApp(
        title: "Praktikum 9",
        debugShowCheckedModeBanner: false,
        home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              return const HomeScreen();
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Something went wrong'),
              );
            } else {
              return const LoginScreen();
            }
          },
        ),
        navigatorKey: NAV_KEY,
        onGenerateRoute: generateRoute,
      ),
    );
  }
}
