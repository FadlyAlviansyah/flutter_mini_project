part of 'app_pages.dart';

abstract class Routes {
  static const PHOTOS = _Paths._PHOTOS;
  static const DETAIL = _Paths._DETAIL;
}

abstract class _Paths {
  static const String _PHOTOS = '/photos';
  static const String _DETAIL = '/detail';
}