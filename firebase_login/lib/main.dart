import 'dart:js';
import 'package:bloc/bloc.dart';
import 'package:firebase_login/authentication/bloc/authentication_bloc.dart';
import 'package:firebase_login/simple_bloc_delegate.dart';
import 'package:firebase_login/splash-screen.dart';
import 'package:firebase_login/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'authentication/bloc/authentication_event.dart';
import 'authentication/bloc/authentication_state.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final UserRepository userRepository = UserRepository();
  runApp(
    BlocProvider(
      create: (context) =>
          AuthenticationBloc(userRepository: userRepository)..add(AppStarted()),
      child: App(userRepository: userRepository),
    ),
  );
}

class App extends StatelessWidget {
  final UserRepository _userRepository;
  App({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is Uninitilialized) {
            return SplashScreen();
          }
          return Container();
        },
      ),
    );
  }
}
