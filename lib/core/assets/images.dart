final class Images {
  Images._();
  static Images? _instace;
  static Images get instance {
    if (_instace != null) return _instace!;
    _instace = Images._();
    return _instace!;
  }

  static const String _basePath = "assets/";

  String _joinPath(String filename) => '$_basePath$filename';
  String get splashLogo => _joinPath("images/daynex_logo.png");
}
