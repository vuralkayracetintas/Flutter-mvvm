import 'package:flutter_mvvm/mvvm/model.dart';
import 'package:flutter_mvvm/core/cache.dart';

class ViewModelClass {
  final BasicCacheInterface cache;

  ViewModelClass(this.cache);
  Future<bool> controlToUserName(BasicModel model) async {
    await Future.delayed(const Duration(seconds: 2));

    return model.userName.length.isOdd ? true : false;
  }

  void saveUserNameToCache(String userName) {
    cache.saveString(userName);
  }
}
