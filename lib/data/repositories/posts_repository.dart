import 'package:list/data/services/posts_services.dart';
import 'package:list/data/models/post.dart';


class PostsRepository {
  final PostsService service;
  PostsRepository(
     this.service,
  );

  Future<List<Post>> fetchPosts(int page) async {
    final posts = await service.fetchPosts(page);
    return posts.map((e) => Post.fromJson(e)).toList();
    
  }
}
