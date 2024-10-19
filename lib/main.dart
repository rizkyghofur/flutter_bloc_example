import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // This widget is the root of the application and is responsible for
    // providing all of the BLoCs that are used in the application.
    //
    // The MultiBlocProvider widget is used to provide multiple BLoCs to the
    // application. The BLoCs are created and disposed of by the
    // MultiBlocProvider when the widget is inserted and removed from the tree.
    //
    // The `providers` property is a list of callbacks that are used to create
    // the BLoCs that are provided by the MultiBlocProvider. The callbacks are
    // called when the widget is inserted into the tree and are passed the
    // BuildContext of the widget as an argument.
    //
    // In this example, we are providing a single BLoC of type `CounterBloc`.
    // The `create` callback is used to create an instance of the BLoC.
    //
    // The `child` property is used to specify the widget that is the child
    // of the MultiBlocProvider. In this case, we are using the MaterialApp
    // widget to create the app's UI.
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
