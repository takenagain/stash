import 'dart:io';

import 'package:stash_hive_ce/stash_hive_ce.dart';

Future<HiveVaultStore> newVaultStore() {
  return Directory.systemTemp
      .createTemp('stash_hive_ce')
      .then((d) => newHiveDefaultVaultStore(path: d.path));
}

Future<HiveCacheStore> newCacheStore() {
  return Directory.systemTemp
      .createTemp('stash_hive_ce')
      .then((d) => newHiveDefaultCacheStore(path: d.path));
}
