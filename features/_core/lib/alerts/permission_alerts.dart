import 'package:deps/packages/permission_handler.dart';
import 'package:flutter/material.dart';

import '../_core/super/permissions/_core/permission_type_enum.dart';
import '../_core/super/super.dart';

@immutable
final class PermissionAlerts {
  void informDenied(PermissionType permissionType, {required VoidCallback onRetry}) {
    $.dialog.showDialog(
      builder: (_) => AlertDialog(
        title: Text($.tr.core.permissions.dialog.denied.title(context: permissionType)),
        content: Text($.tr.core.permissions.dialog.denied.description(context: permissionType)),
        actions: [
          TextButton(
            onPressed: () {
              $.dialog.popDialog();
              onRetry();
            },
            child: Text($.tr.core.permissions.dialog.buttons.retry),
          ),
          TextButton(
            onPressed: $.dialog.popDialog,
            child: Text($.tr.core.permissions.dialog.buttons.cancel),
          ),
        ],
      ),
    );
  }

  void informPermanentlyDenied(PermissionType permissionType) {
    $.dialog.showDialog(
      builder: (_) => AlertDialog(
        title: Text($.tr.core.permissions.dialog.permanentlyDenied.title(context: permissionType)),
        content: Text($.tr.core.permissions.dialog.permanentlyDenied.description(context: permissionType)),
        actions: [
          TextButton(
            child: Text($.tr.core.permissions.dialog.buttons.openSettings),
            onPressed: () {
              $.dialog.popDialog();
              openAppSettings();
            },
          ),
          TextButton(
            onPressed: $.dialog.popDialog,
            child: Text($.tr.core.permissions.dialog.buttons.cancel),
          ),
        ],
      ),
    );
  }

  void informRestricted(PermissionType permissionType) {
    $.dialog.showDialog(
      builder: (_) => AlertDialog(
        title: Text($.tr.core.permissions.dialog.restricted.title(context: permissionType)),
        content: Text($.tr.core.permissions.dialog.restricted.description(context: permissionType)),
        actions: [
          TextButton(
            onPressed: $.dialog.popDialog,
            child: Text($.tr.core.permissions.dialog.buttons.understood),
          ),
        ],
      ),
    );
  }

  void informLimited(PermissionType permissionType) {
    $.dialog.showDialog(
      builder: (_) => AlertDialog(
        title: Text($.tr.core.permissions.dialog.limited.title(context: permissionType)),
        content: Text($.tr.core.permissions.dialog.limited.description(context: permissionType)),
        actions: [
          TextButton(
            child: Text($.tr.core.permissions.dialog.buttons.openSettings),
            onPressed: () {
              $.dialog.popDialog();
              openAppSettings();
            },
          ),
          TextButton(
            onPressed: $.dialog.popDialog,
            child: Text($.tr.core.permissions.dialog.buttons.ok),
          ),
        ],
      ),
    );
  }

  void informProvisional(PermissionType permissionType) {
    $.dialog.showDialog(
      builder: (_) => AlertDialog(
        title: Text($.tr.core.permissions.dialog.provisional.title(context: permissionType)),
        content: Text($.tr.core.permissions.dialog.provisional.description),
        actions: [
          TextButton(
            onPressed: $.dialog.popDialog,
            child: Text($.tr.core.permissions.dialog.buttons.ok),
          ),
        ],
      ),
    );
  }
}
