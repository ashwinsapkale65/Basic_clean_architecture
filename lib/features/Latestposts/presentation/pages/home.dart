import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_clean/features/Latestposts/presentation/cubit/posts_cubit.dart';

class home extends StatefulWidget {
  const home({super.key});




  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

    @override
  void initState() {
    super.initState();
    BlocProvider.of<PostsCubit>(context).loadPost();
  }


  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(title: const Text('PoSts'),),
      body: BlocBuilder<PostsCubit, PostsState>(
      builder: (context, state) {
        if (state is Postloaded) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: state.posts.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text(state.posts[index].id.toString()),
                      title: Text(state.posts[index].title.toString()),
                      subtitle: Text(state.posts[index].body.toString()),
                    );
                  },
                ),
              ],
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    ), );
  }
}