import 'package:login_signup_example/model/settings.dart';

class User {
  final String id;
  final String name;
  final DateTime dateOfBirth;
  final String imagePath;
  final List<String> pets;
  final Settings settings;

  const User({
    this.id = '',
    this.name = '',
    this.dateOfBirth,
    this.imagePath = '',
    this.pets = const [],
    this.settings = const Settings(),
  });

  User copy({
    String id,
    String name,
    DateTime dateOfBirth,
    String imagePath,
    List<String> pets,
    Settings settings,
  }) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        imagePath: imagePath ?? this.imagePath,
        pets: pets ?? this.pets,
        settings: settings ?? this.settings,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        name: json['name'],
        dateOfBirth: DateTime.tryParse(json['dateOfBirth']),
        imagePath: json['imagePath'],
        pets: List<String>.from(json['pets']),
        settings: Settings.fromJson(json['settings']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'dateOfBirth': dateOfBirth.toIso8601String(),
        'imagePath': imagePath,
        'pets': pets,
        'settings': settings.toJson(),
      };

  @override
  String toString() => 'User{id: $id, name: $name}';
}
