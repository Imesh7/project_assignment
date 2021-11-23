class CharacterModel {
  int? charId;
  String? name;
  String? birthday;
  List<String>? occupation;
  String? img;
  String? status;
  String? nickname;
  List<int>? appearance;
  String? portrayed;
  String? category;
  List<dynamic>? betterCallSaulAppearance;

  CharacterModel(
      {this.charId,
      this.name,
      this.birthday,
      this.occupation,
      this.img,
      this.appearance,
      this.betterCallSaulAppearance,
      this.category,
      this.nickname,
      this.portrayed,
      this.status});


      factory CharacterModel.fromJson(Map<String, dynamic> json) => CharacterModel(
        charId: json["char_id"],
        name: json["name"],
        birthday: json["birthday"],
        occupation: List<String>.from(json["occupation"].map((x) => x)),
        img: json["img"],
        status: json["status"],
        nickname: json["nickname"],
        appearance: List<int>.from(json["appearance"].map((x) => x)),
        portrayed: json["portrayed"],
        category: json["category"],
        betterCallSaulAppearance: List<dynamic>.from(json["better_call_saul_appearance"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "char_id": charId,
        "name": name,
        "birthday": birthday,
        "occupation": List<dynamic>.from(occupation!.map((x) => x)),
        "img": img,
        "status": status,
        "nickname": nickname,
        "appearance": List<dynamic>.from(appearance!.map((x) => x)),
        "portrayed": portrayed,
        "category": category,
        "better_call_saul_appearance": List<dynamic>.from(betterCallSaulAppearance!.map((x) => x)),
    };
}
