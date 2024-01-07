// Copyright 2024 Anto Wiranto. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:deps/infrastructure/infrastructure.dart';

/// `WrongCredentialsFailure` is a specific type of failure that occurs
/// when authentication fails due to incorrect credentials.
///
/// This failure class extends `Failure` and provides a specific error code,
/// type, tag, and message associated with wrong credential scenarios.
class WrongCredentialsAuthFailure extends Failure {
  /// Constructs a `WrongCredentialsFailure` instance with predefined properties.
  ///
  /// This failure is categorized under `FailureType.destructive` and `FailureTag.repository`,
  /// indicating that it's a critical error related to data storage or retrieval.
  /// The `code` and `message` are set to identify and describe the nature of the failure.
  WrongCredentialsAuthFailure()
      : super(
          code: 'wrong-credentials-auth-failure',
          type: FailureType.destructive,
          tag: FailureTag.repository,
          message: 'tr.exceptions.auth.wrongCredentialsFailure',
        );
}
