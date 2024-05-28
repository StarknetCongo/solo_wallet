/// [Token] class
class Token {
  String? type;
  String? value;

  Token({this.type, this.value});

  Token.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['type'] = type;
    data['value'] = value;
    return data;
  }
}
