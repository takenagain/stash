import 'package:stash_sembast/stash_sembast.dart';

Future<SembastVaultStore> newVaultStore() {
  return newSembastMemoryVaultStore();
}

Future<SembastCacheStore> newCacheStore() {
  return newSembastMemoryCacheStore();
}
