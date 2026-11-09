import 'package:flutter/material.dart';

import '../config/dependency_provider.dart';
import '../models/post.dart';

class PostListScreen extends StatelessWidget {
  const PostListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final postRepository = DependencyProvider.of(context).postRepository;

    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Postingan')),
      body: FutureBuilder<List<Post>>(
        future: postRepository.getPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Terjadi kesalahan: ${snapshot.error}'));
          }

          final List<Post> posts = snapshot.data ?? <Post>[];

          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];

              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.body),
              );
            },
          );
        },
      ),
    );
  }
}
