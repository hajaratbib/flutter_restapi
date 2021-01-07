
class User {
  final String status;
  final String code;
  final String message;
  final List<String> result;

  User({this.status,this.code, this.message, this.result});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      status: json['status'],
      code: json['code'],
      message: json['message'],
      result: json['result'],
    );
  }
}