import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'foreground_poll.g.dart';

/// Disable Riverpod 3's automatic retry so a failing fetch cannot tight-loop.
Duration? nereusNoRetry(int retryCount, Object error) => null;

/// True while the app is in the foreground / the browser tab is visible.
@Riverpod(keepAlive: true, retry: nereusNoRetry)
class AppForeground extends _$AppForeground {
  AppLifecycleListener? _listener;

  @override
  bool build() {
    _listener = AppLifecycleListener(
      onResume: () => state = true,
      onShow: () => state = true,
      onHide: () => state = false,
      onPause: () => state = false,
      onDetach: () => state = false,
    );
    ref.onDispose(() {
      _listener?.dispose();
      _listener = null;
    });
    return true;
  }
}

/// Increments once per interval while the app is in the foreground.
///
/// Uses listen (not watch) so pausing the app does not rebuild this
/// provider and reset the timer. The first increment is after one
/// interval; the watching provider's own first build is the mount fetch.
@Riverpod(keepAlive: true, retry: nereusNoRetry)
class ForegroundPoll extends _$ForegroundPoll {
  Timer? _timer;
  var _seq = 0;

  @override
  int build(Duration interval) {
    ref.listen<bool>(
      appForegroundProvider,
      (previous, foreground) {
        if (foreground) {
          if (previous == false) {
            state = ++_seq;
          }
          _timer ??= Timer.periodic(interval, (_) {
            state = ++_seq;
          });
        } else {
          _timer?.cancel();
          _timer = null;
        }
      },
      fireImmediately: true,
    );
    ref.onDispose(() {
      _timer?.cancel();
      _timer = null;
    });
    return _seq;
  }
}
