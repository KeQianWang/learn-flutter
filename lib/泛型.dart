abstract class Cache<T>{
  getByKey(String key);
  setByKey(String key ,T value);
}

class FileCache<T> implements Cache<T>{
  @override
  getByKey(String key) {
    return null;
  }

  @override
  setByKey(String key, T value) {
    print("我是文件缓存 把key=${key}  value=${value}的数据写入到了文件中");
  }
}

class MemoryCache<T> implements Cache<T>{
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("我是内存缓存 把key=${key}  value=${value} -写入到了内存中");
  }
}
main(){
  FileCache f = FileCache();
  f.setByKey("index", '首页数据');

  MemoryCache m= MemoryCache<Map>();
  m.setByKey('index', {"name":"张三","age":20});
}