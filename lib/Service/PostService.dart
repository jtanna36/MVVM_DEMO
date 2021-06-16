import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
class PostService
{
  String url = "https://jsonplaceholder.typicode.com/posts";
  Dio dio = new Dio();

  Future<dynamic> get() async
  {
    final response = await dio.get(url);
    if(response.statusCode == 200)
      {
        return response.data;
      }
  }
}