import 'package:flutter/cupertino.dart';
import 'package:mvvm_demo/data/PostRepository.dart';
import 'package:mvvm_demo/model/Post.dart';

class PostViewModel extends ChangeNotifier
{

  Post post;
  List postList;

  Future fetchPostData() async
  {
    postList = await PostRepository().fetchPostList();
    notifyListeners();
  }
}