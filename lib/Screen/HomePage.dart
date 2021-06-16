import 'package:flutter/material.dart';
import 'package:mvvm_demo/ViewModel/PostViewModel.dart';
import 'package:mvvm_demo/model/Post.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    Provider.of<PostViewModel>(context,listen: false).fetchPostData();
  }
  @override
  Widget build(BuildContext context) {
    List<Post> postList = Provider.of<PostViewModel>(context).postList;
    return Scaffold(
      appBar: AppBar(
        title: Text("MVVM Demo"),
      ),
      body: Container(
        child: Center(
          child: ListView.builder(
              itemCount: postList.length,
              itemBuilder: (context,index)
              {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          postList[index].id.toString()
                        ),
                        Text(
                          postList[index].title
                        ),
                        Text(
                          postList[index].body
                        )
                      ],
                    ),
                  ),
                );
              }
          )
        ),
      ),
    );
  }
}
