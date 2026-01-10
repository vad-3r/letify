import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _flutterIconsFamily = 'FlutterIcons';
  static const String _icomoonFamily = 'Icomoon';
  static const String _reserved2IconFamily = 'Reserved2Icon';
  static const String _reserved4IconFamily = 'Reserved4Icon';

  // flutter_icons
  static const IconData kcommunication =
      IconData(0xe900, fontFamily: _flutterIconsFamily);
  static const IconData klinkedWithMe =
      IconData(0xe901, fontFamily: _flutterIconsFamily);
  static const IconData kcontractsCompact =
      IconData(0xe902, fontFamily: _flutterIconsFamily);
  static const IconData ktenantsCompact =
      IconData(0xe903, fontFamily: _flutterIconsFamily);
  static const IconData ktenantsContractsCompact =
      IconData(0xe904, fontFamily: _flutterIconsFamily);
  static const IconData kportfolioManagerCompact =
      IconData(0xe905, fontFamily: _flutterIconsFamily);

  // icomoon
  static const IconData kiconDesignsLandlord =
      IconData(0xe900, fontFamily: _icomoonFamily);

  // reserved2-icon
  static const IconData kreserved4 =
      IconData(0xe900, fontFamily: _reserved2IconFamily);

  // reserved4-icon
  static const IconData kreserved6 =
      IconData(0xe900, fontFamily: _reserved4IconFamily);
}
