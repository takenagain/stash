import 'package:stash_sembast/stash_sembast.dart';
import 'package:stash_sembast_web/stash_sembast_web.dart';

Future<SembastVaultStore> newVaultStore() {
  return newSembastWebVaultStore();
}

Future<SembastCacheStore> newCacheStore() {
  return newSembastWebCacheStore();
}
