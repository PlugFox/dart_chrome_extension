# Chrome Extension

Release:

```bash
rm -rf build .dart_tool/build/generated/web
dart run build_runner build --delete-conflicting-outputs --release
```

**WARNING:** Debugger is not working right now. You can use `print` to debug.
