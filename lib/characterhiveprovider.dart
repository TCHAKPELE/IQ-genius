
import 'package:hive/hive.dart';
import 'package:iq_genius/base_hive_provider.dart';
import 'package:iq_genius/model/users.dart';
import 'package:path_provider/path_provider.dart';

class CharacterHiveProvider extends BaseHiveProvider<User, CharacterHiveProvider>{
  CharacterHiveProvider._privateConstructor();
  static Future<CharacterHiveProvider> create() async{
    final component = CharacterHiveProvider._privateConstructor();
    final dir = await getApplicationDocumentsDirectory();
    if(_box == null){
      Hive
        ..init(dir.path)
        ..registerAdapter<User>(UserAdapter());
      _box = await Hive.openBox('users');
    }
    return component;
  }
  static Box<User> _box;
  @override
  Future<void> add(String id, User user) => _box.put(id, user);
  @override
  Future<void> addAll(Map<String, User> map) => _box.putAll(map);
  @override
  Future<void> clear() => _box.clear();
  @override
  Future<void> delete(String id) => _box.delete(id);
  @override
  User get(String id) => _box.get(id);
  @override
  List<User> getAll() => List<User>.from(_box.values.toList());
  @override
  Future<void> close() => _box.close();
}