import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_clean/features/Latestposts/presentation/cubit/posts_cubit.dart';
import 'package:learn_clean/features/Latestposts/presentation/pages/home.dart';
import 'injection_container.dart' as dl;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

 await dl.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
      return BlocProvider<PostsCubit>(create: (_)=>dl.sl<PostsCubit>(),
      child: MaterialApp(
      title: 'Material App',
      home: const home()
    ));
 
     }
}