import 'dart:convert';

import 'package:w5/Week6/EX-2-START-CODE/model/post.dart';
import 'package:w5/Week6/EX-2-START-CODE/repository/post_repository.dart';
import 'package:http/http.dart' as http;

class HttpPostsRepository extends PostRepository {
  static const String _baseUrl = "https://jsonplaceholder.typicode.com/posts";
  @override
  Future<List<Post>> getPost() async {
    try {
      final res = await http.get(Uri.parse(_baseUrl));
      if (res.statusCode == 200) {
        final List<dynamic> body = json.decode(res.body);
        return body.map((dynamic item) => Post.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load posts ${res.statusCode}');
      }
    } catch (e) {
      throw Exception('error: $e');
    }
  }
}