import 'dart:async';
import 'package:app_links_platform_interface/app_links_platform_interface.dart';

/// Android App Links, Deep Links,
/// iOs Universal Links and Custom URL schemes handler
class AppLinks extends AppLinksPlatform {
  /// Constructor
  AppLinks();

  @override
  Future<Uri?> getInitialAppLink() {
    return AppLinksPlatform.instance.getInitialAppLink();
  }

  @override
  Future<String?> getInitialAppLinkString() async {
    return AppLinksPlatform.instance.getInitialAppLinkString();
  }

  @override
  Future<Uri?> getLatestAppLink() async {
    return AppLinksPlatform.instance.getLatestAppLink();
  }

  @override
  Future<String?> getLatestAppLinkString() async {
    return AppLinksPlatform.instance.getLatestAppLinkString();
  }

  @override
  Stream<String> get stringLinkStream {
    return AppLinksPlatform.instance.stringLinkStream;
  }

  @override
  Stream<Uri> get uriLinkStream => AppLinksPlatform.instance.uriLinkStream;
}
