import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:list/cubit/posts_cubit.dart';
import 'package:list/data/repositories/posts_repository.dart';
import 'package:list/data/services/posts_services.dart';
import 'package:list/presentation/posts_screen.dart';

void main() {
  runApp(PaginationApp(repository: PostsRepository(PostsService())));
}

class PaginationApp extends StatelessWidget {
 final PostsRepository repository;
  const PaginationApp({
    Key? key,
    required this.repository,
  }) : super(key: key);
 
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => PostsCubit(repository),
        child: PostsView(),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'FlutterApp',
     debugShowCheckedModeBanner: true,
     theme: ThemeData(
        primaryColor: Colors.black12,
        accentColor: Colors.orange,
     ),
     home: Scaffold(
       appBar: AppBar(
         title: Text('Stateless'),
         backgroundColor: Colors.black,
         ),
   ),);
  }
}
