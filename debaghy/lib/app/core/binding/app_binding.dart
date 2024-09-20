import 'package:debaghy/app/services/api/dio_consumer.dart';
import 'package:debaghy/app/services/connection/network_info.dart';
import 'package:debaghy/app/services/local_storage/cache_services.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CacheServices());
    Get.lazyPut(() => DioConsumer(dio: Dio()));
    Get.put(NetworkInfoImpl());
    //repos
    //  lazyPut TempRepositoryImpl
    //  lazyPut TempLocalDataSourcee
    //  lazyPut TempRemoteDataSource +Get.find<DioConsumer>()
  }

  Future<void> initializes() async {
    await Get.find<CacheServices>().init();
  }
}
