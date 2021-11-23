import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project_assignment/models/character_api_data_model.dart';

class FindScreenServices {
  Future<List<CharacterModel>> getdata() async {
    try {
      var response = await http.get(
          Uri.parse("https://www.breakingbadapi.com/api/characters?limit=12"));

      List jsondecode = jsonDecode(response.body);
      List<CharacterModel> data =
          jsondecode.map((e) => CharacterModel.fromJson(e)).toList();
      return data;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
