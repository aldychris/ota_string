# OTA generator example

## Getting started

Use **Flutter 3.41.2** (e.g. via FVM) and **ota_generator** **0.0.6** or later.

1. Add or remove string fields on `AppLocalize` in `app_localize.dart`.
2. Run the following commands to regenerate `app_localize.g.dart`:

```bash
fvm use 3.41.2
fvm dart run build_runner build --delete-conflicting-outputs
```

3. Changes appear in `app_localize.g.dart` after the build finishes.
