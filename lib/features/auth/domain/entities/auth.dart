import 'package:hive/hive.dart';
part 'auth.g.dart';

@HiveType(typeId: 0)
class Auth{
  @HiveField(0)
  final bool isLoggedIn;

  Auth({required this.isLoggedIn});
}