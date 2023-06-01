

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_favourites/Provider_page1.dart';
import 'package:provider_favourites/provider/privider_function.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=> Provider_class(),
      child: MaterialApp(
 debugShowCheckedModeBanner: false,
        home: Provider_favorites(),
    ))
  );

}
