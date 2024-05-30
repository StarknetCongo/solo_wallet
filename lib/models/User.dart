class User {
  final String name;
  final String email;
  final int pin;

  User({required this.name, required this.email, required this.pin});

  // Méthode pour créer une instance de User à partir d'une map JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
      pin: json['pin'],
    );
  }

  // Méthode pour convertir une instance de User en une map JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'pin': pin,
    };
  }
}
