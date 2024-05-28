import 'dart:convert';

class AppPref {
  static SharedPreferences? prefs;

  static const String theme = "theme";
  static const String mobilTokenKey = "mobile_token_key";
  static const String tutorToken = "totor_token";
  static const String tuteeToken = "tutee_token";
  static const String tutor = "tutor";
  static const String tutee = "tutor";

  static void setTheme(bool isDark) {
    prefs!.setBool(
      theme,
      isDark,
    );
  }

  static bool? get getTheme => prefs?.getBool(theme);

  static Token get getUsedToken {
    var token = prefs?.getString(mobilTokenKey) ?? '';
    if (token.isEmpty) {
      return Token(value: "");
    } else {
      var json = jsonDecode(token);
      return Token.fromJson(json);
    }
  }

  static void setUsedToken(Token token) {
    prefs!.setString(
      mobilTokenKey,
      jsonEncode(
        token.toJson(),
      ),
    );
  }
}
