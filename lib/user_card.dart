import 'package:hive/hive.dart';

part 'user_card.g.dart';

@HiveType(typeId: 1)
class UserCard{
  UserCard({
    required this.concept,
    required this.definition,
  });

  @HiveField(0)
  String concept;

  @HiveField(1)
  String definition;
}
