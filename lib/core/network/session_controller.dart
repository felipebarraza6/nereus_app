typedef LogoutCallback = Future<void> Function();

/// Shared mutable session used by the Dio interceptor.
class SessionController {
  String? token;
  String? branchId;
  LogoutCallback? onUnauthorized;

  void update({String? token, String? branchId}) {
    if (token != null) this.token = token;
    if (branchId != null) this.branchId = branchId;
  }

  void clear() {
    token = null;
    branchId = null;
  }
}
