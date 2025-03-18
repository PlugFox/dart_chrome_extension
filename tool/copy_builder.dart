import 'package:build/build.dart';

/// Factory for the build script.
Builder copyBuilder(_) => _CopyBuilder();

class _CopyBuilder extends Builder {
  @override
  Map<String, List<String>> get buildExtensions => {
    'web/{{}}.dart.js': ['build/{{}}.dart.js'],
    'web/{{}}.wasm': ['build/{{}}.wasm'],
    'web/{{}}.mjs': ['build/{{}}.mjs'],
    'web/{{}}.map': ['build/{{}}.map'],
    'web/icons/{{}}.png': ['build/icons/{{}}.png'],
    'web/icons/{{}}.webp': ['build/icons/{{}}.webp'],
    'web/{{}}.html': ['build/{{}}.html'],
    'web/{{}}.css': ['build/{{}}.css'],
    'web/manifest.json': ['build/manifest.json'],
    'web/favicon.ico': ['build/favicon.ico'],
  };

  @override
  Future<void> build(BuildStep buildStep) async {
    final inputAsset = buildStep.inputId;
    final allowedOutputs = buildStep.allowedOutputs;

    if (allowedOutputs.length != 1) return;

    final outputAsset = allowedOutputs.first;
    await _copyBinaryFile(buildStep, inputAsset: inputAsset, outputAsset: outputAsset);
  }

  Future<void> _copyBinaryFile(BuildStep buildStep, {required AssetId inputAsset, required AssetId outputAsset}) =>
      buildStep.writeAsBytes(outputAsset, buildStep.readAsBytes(inputAsset));
}
