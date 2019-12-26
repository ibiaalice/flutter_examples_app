import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:infinitelist/events/post-bloc.dart';
import 'package:infinitelist/states/post-state.dart';

import 'bloc.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final http.Client httpClient;

  PostBloc({@required this.httpClient});

  @override
  PostState get initialState => null;

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    yield null;
  }
}
