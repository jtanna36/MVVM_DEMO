import 'package:mvvm_demo/Service/PostService.dart';
import 'package:mvvm_demo/model/Post.dart';

class PostRepository
{
  PostService postService = new PostService();

  Future<List> fetchPostList() async
  {
    var response = await postService.get();
    final jsonData = response as List;
    List<Post> postList = jsonData.map((e) => Post.fromJson(e)).toList();
    return postList;
  }
}