import 'package:flutter/cupertino.dart';
import 'package:project_assignment/models/character_api_data_model.dart';
import 'package:project_assignment/services/find_screen_services.dart';

enum ApiDataStatus { initial, loading, completed, error }

class FindScreenProvider with ChangeNotifier {
  ApiDataStatus _apiDataStatus = ApiDataStatus.initial;
  List<CharacterModel> _characterData = [];

  List<CharacterModel> get characterModel => _characterData;
  ApiDataStatus get apidatastatus => _apiDataStatus;

  Future findScreenData() async {
    
    try {
      _apiDataStatus = ApiDataStatus.loading;
      List<CharacterModel> data = await FindScreenServices().getdata();
      _characterData = data;

      _apiDataStatus = ApiDataStatus.completed;
    } catch (e) {
      print(e.toString());
      _apiDataStatus = ApiDataStatus.error;
    }
    notifyListeners();
  }
}
