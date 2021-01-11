abstract class BaseHiveProvider<T, Y>{
  T get(String id);
  List<T> getAll();
  Future<void> add(String id,T value);
  Future<void> addAll(Map<String, T> map);
  Future<void> clear();
  Future<void> delete(String id);
}

