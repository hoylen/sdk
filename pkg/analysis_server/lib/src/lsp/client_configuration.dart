// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Wraps the client (editor) configuration to provide stronger typing and
/// handling of default values where a setting has not been supplied.
class LspClientConfiguration {
  final Map<String, dynamic> _settings = <String, dynamic>{};

  void replace(Map<String, dynamic> newConfig) {
    _settings
      ..clear()
      ..addAll(newConfig);
  }

  // Typed getters that handle default settings will be added like this.
  // bool get enableSdkFormatter => _settings['enableSdkFormatter'] ?? true;
}
