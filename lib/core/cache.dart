abstract class BasicCacheInterface {
  bool saveString(String value);
}

class CacheClass implements BasicCacheInterface {
  @override
  bool saveString(String value) {
    return true;
  }
}
