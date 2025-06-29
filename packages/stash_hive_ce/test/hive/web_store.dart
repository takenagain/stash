import 'package:stash_hive_ce/stash_hive_ce.dart';

Future<HiveVaultStore> newVaultStore() {
  return Future.value(newHiveDefaultVaultStore());
}

Future<HiveCacheStore> newCacheStore() {
  return Future.value(newHiveDefaultCacheStore());
}
