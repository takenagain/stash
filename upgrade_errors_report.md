# Build Errors After Dependency Upgrade

The following table summarizes the results of running `flutter build web` after updating dependencies to the latest versions.

| Package | Build Result |
|---------|--------------|
| root | `Target file "lib/main.dart" not found.` |
| stash | `Target file "lib/main.dart" not found.` |
| stash_cbl | `Target file "lib/main.dart" not found.` |
| stash_dio | `Target file "lib/main.dart" not found.` |
| stash_file | `Target file "lib/main.dart" not found.` |
| stash_hive | `Target file "lib/main.dart" not found.` |
| stash_hive_ce | `Target file "lib/main.dart" not found.` |
| stash_isar | `Target file "lib/main.dart" not found.` |
| stash_memory | `Target file "lib/main.dart" not found.` |
| stash_objectbox | `Target file "lib/main.dart" not found.` |
| stash_secure_storage | **Build succeeded** |
| stash_sembast | `Target file "lib/main.dart" not found.` |
| stash_sembast_web | `Target file "lib/main.dart" not found.` |
| stash_shared_preferences | **Build succeeded** |
| stash_sqlite | `Target file "lib/main.dart" not found.` |
| stash_test | `Target file "lib/main.dart" not found.` |

Most packages are Dart libraries and do not contain a web application entry point. Only the `stash_secure_storage` and `stash_shared_preferences` packages include Flutter example applications that successfully built for the web.

## Recommended Actions

- **Library packages** – They are not meant to be compiled directly. Provide a minimal `web` example or ignore the build step for them.
- **stash_secure_storage** and **stash_shared_preferences** – No action required since the web builds succeed.
- **New `stash_hive_ce` package** – Ensure documentation and publishing configuration are adjusted before release.

