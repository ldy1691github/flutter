// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../base/context.dart';
import '../doctor.dart';
import '../features.dart';
import '../globals.dart' as globals;

/// The  web workflow instance.
WebWorkflow get webWorkflow => context.get<WebWorkflow>();

class WebWorkflow extends Workflow {
  const WebWorkflow();

  @override
  bool get appliesToHostPlatform => featureFlags.isWebEnabled && (globals.platform.isWindows || globals.platform.isMacOS || globals.platform.isLinux);

  @override
  bool get canLaunchDevices => featureFlags.isWebEnabled;

  @override
  bool get canListDevices => featureFlags.isWebEnabled;

  @override
  bool get canListEmulators => false;
}
