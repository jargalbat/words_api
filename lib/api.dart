import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:words_api/post.dart';
import 'package:words_api/word_response.dart';

// https://developer.oxforddictionaries.com/admin/applications/1409618852063
const String _baseURL = 'https://od-api.oxforddictionaries.com/api/v2';
const String _applicationID = '435af2f7';
const String _applicationKey = '2efc6c89cf6ca2a42c6a845c9646199c';
const String _language = 'en';

// fetch - дуудах, авчрах
Future<OxfordResponse> fetchPost({@required String wordID}) async {
  String URL = _baseURL + '/entries/' + _language + '/' + wordID.toLowerCase();

  final response = await http.get(URL, headers: {
    HttpHeaders.acceptHeader: 'application/json',
    'app_id': _applicationID,
    'app_key': _applicationKey,
  });

  if (response.statusCode == 200) {
    Uint8List bytes = response.bodyBytes;
    String str = String.fromCharCodes(bytes);
    return OxfordResponse.fromJson(json.decode(str));

  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}

//final response = await http.get(
//'https://jsonplaceholder.typicode.com/posts/1',
//headers: {HttpHeaders.authorizationHeader: "Basic your_api_token_here"},
//);
//final responseJson = json.decode(response.body);
//
//return Post.fromJson(responseJson);
