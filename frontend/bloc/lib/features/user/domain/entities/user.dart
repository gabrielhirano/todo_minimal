class User {
  final int id;
  final String name;
  final String description;

  User({
    required this.id,
    required this.name,
    required this.description,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] ?? UserEmpty().id,
        name: json['name'] ?? UserEmpty().name,
        description: json['description'] ?? UserEmpty().description,
      );
}

class UserEmpty extends User {
  UserEmpty() : super(id: 0, name: '', description: '');
}
