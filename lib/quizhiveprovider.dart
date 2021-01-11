
import 'package:hive/hive.dart';
import 'package:iq_genius/base_hive_provider.dart';
import 'package:iq_genius/model/quiz.dart';
import 'package:path_provider/path_provider.dart';

class CharacterHiveProvider extends BaseHiveProvider<Quiz, CharacterHiveProvider>{
  CharacterHiveProvider._privateConstructor();
  static Future<CharacterHiveProvider> create() async{
    final component = CharacterHiveProvider._privateConstructor();
    final dir = await getApplicationDocumentsDirectory();
    if(_box == null){
      Hive
        ..init(dir.path)
        ..registerAdapter<Quiz>(QuizAdapter());
      _box = await Hive.openBox('quiz');
    }
    return component;
  }
  static Box<Quiz> _box;
  @override
  Future<void> add(String id, Quiz quiz) => _box.put(id, quiz);
  @override
  Future<void> addAll(Map<String, Quiz> map) => _box.putAll(map);
  @override
  Future<void> clear() => _box.clear();
  @override
  Future<void> delete(String id) => _box.delete(id);
  @override
  Quiz get(String id) => _box.get(id);
  @override
  List<Quiz> getAll() => List<Quiz>.from(_box.values.toList());
  @override
  Future<void> close() => _box.close();
}