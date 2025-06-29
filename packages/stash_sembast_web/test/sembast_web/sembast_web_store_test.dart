import 'package:stash_sembast/stash_sembast.dart';
import 'package:stash_test/stash_test.dart';

import 'vm_store.dart' if (dart.library.js) 'web_store.dart';

class VaultStoreContext extends VaultTestContext<SembastVaultStore> {
  VaultStoreContext(super.generator);

  @override
  Future<SembastVaultStore> newStore() {
    return newVaultStore();
  }
}

class CacheStoreContext extends CacheTestContext<SembastCacheStore> {
  CacheStoreContext(super.generator);

  @override
  Future<SembastCacheStore> newStore() {
    return newCacheStore();
  }
}

void main() async {
  testStore((generator) => VaultStoreContext(generator));
  testStore((generator) => CacheStoreContext(generator));
  testVault((generator) => VaultStoreContext(generator));
  testCache((generator) => CacheStoreContext(generator));
}
