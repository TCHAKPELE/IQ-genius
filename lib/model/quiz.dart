import 'package:hive/hive.dart';
part 'quiz.g.dart';

//flutter pub run build_runner build

@HiveType(typeId: 0)
class Quiz {
  @HiveField(0)
  int id;
  @HiveField(1)
  String question;
  @HiveField(2)
  String answer;
  @HiveField(3)
  String choice_1;
  @HiveField(4)
  String choice_2;
  @HiveField(5)
  String choice_3;

  // ignore: sort_constructors_first
  Quiz(
    this.question,
    this.answer,
    this.choice_1,
    this.choice_2,
    this.choice_3

  );

}
