


import 'dart:ffi';

import 'package:get_it/get_it.dart';
import 'package:learn_clean/features/Latestposts/data/data%20source/getdata.dart';
import 'package:learn_clean/features/Latestposts/data/data%20source/getdataimpl.dart';
import 'package:learn_clean/features/Latestposts/data/repositories/PostRepoImpl.dart';
import 'package:learn_clean/features/Latestposts/domain/repositories/PostsRepo.dart';
import 'package:learn_clean/features/Latestposts/domain/usecases/GetPostUsecase.dart';
import 'package:learn_clean/features/Latestposts/presentation/cubit/posts_cubit.dart';

GetIt sl = GetIt.instance;


Future<void> init() async {

  sl.registerFactory<PostsCubit>(() => PostsCubit(getPostUsecase: sl.call()));
  
sl.registerLazySingleton<GetPostUsecase>(() => GetPostUsecase(postRepo: sl.call()));

sl.registerLazySingleton<PostRepo>(() => PostRepoImpl(getdata: sl.call()));

sl.registerLazySingleton<Getdata>(() => getdataimpl());
 

}