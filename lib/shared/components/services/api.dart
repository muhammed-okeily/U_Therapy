

import 'package:cheer/models/doctor/doctor.dart';
import 'package:cheer/models/doctor/post.dart';
import 'package:cheer/models/doctor/review.dart';
import 'package:cheer/models/doctor/test.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'API_Helper.dart';

class ApiService {

  Future<List<Doctor>> getDoctors() async {
    Response res = await get(Uri.parse(API.users));
    if (res.statusCode == 200) {
      return decodeDoctorsFromJson(res.body);
    } else {
      throw Exception("Failed to load users, ${res.statusCode} - ${res.body}");
    }
  }


  Future<List<Post>> getPosts() async {
    Response res = await get(Uri.parse(API.products));
    if (res.statusCode == 200) {
      return decodePostsFromJson(res.body);
    } else {
      throw Exception("Failed to load users, ${res.statusCode} - ${res.body}");
    }
  }

  Future<List<Post>> getPostsOfCat(String cat) async {
    final String url = "https://dummyjson.com/products/category/$cat";
    final http.Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      return decodePostsFromJson(res.body);
    } else {
      throw Exception("Failed to load users, ${res.statusCode} - ${res.body}");
    }
  }

  Future<List<Test>> getTests() async {
    Response res = await get(Uri.parse(API.posts));
    if (res.statusCode == 200) {
      return decodeTestsFromJson(res.body);
    } else {
      throw Exception("Failed to load users, ${res.statusCode} - ${res.body}");
    }
  }

  Future<List<Review>> getReviews() async {
    Response res = await get(Uri.parse(API.comments));
    if (res.statusCode == 200) {
      return decodeReviewsFromJson(res.body);
    } else {
      throw Exception("Failed to load users, ${res.statusCode} - ${res.body}");
    }
  }

  Future<List<Test>> questionstwo() async {
    Response res = await get(Uri.parse(''));
    if (res.statusCode == 200) {
      return decodeTestsFromJson(res.body);
    } else {
      throw Exception("Failed to load users, ${res.statusCode} - ${res.body}");
    }
  }

  
}

