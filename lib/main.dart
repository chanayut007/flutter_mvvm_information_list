import 'package:flutter/material.dart';
import 'package:flutter_information_list_mvvm_app/view/user_list_page.dart';
import 'package:flutter_information_list_mvvm_app/view_model/user_list_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserListViewModel())
      ],
      child: MaterialApp(
          title: 'User List MVVM',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const UserListScreen()
      ),
    );
  }
}