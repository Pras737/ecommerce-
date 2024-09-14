import 'package:e_commerce/presentation/home_page.dart';
import 'package:e_commerce/product/bloc/product_bloc.dart';
import 'package:e_commerce/product/bloc/product_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc()..add(LoadProducts()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-Commerce App',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        ),
        home: HomePage(),
      ),
    );
  }
}