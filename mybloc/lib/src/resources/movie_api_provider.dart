import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';

import 'package:mybloc/src/models/item-model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = 'your_api_key';

  Future<ItemModel> fetchMovieList() async {
    print('entered');
    final response = await client
        .get('http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey');
  }
}
