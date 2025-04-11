import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/app/view/app_view.dart';
import 'package:to_do_list/core/di/injectable.dart';
import 'package:to_do_list/core/router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // AppRouter is a Listenable, so we need to wrap it in a ListenableProvider
    return ListenableProvider.value(
      value: getIt<AppRouter>(),
      child: const AppView(),
    );
  }
}
