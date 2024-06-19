/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/John.png
  AssetGenImage get john => const AssetGenImage('assets/images/John.png');

  /// File path: assets/images/Red_Mountains.png
  AssetGenImage get redMountains =>
      const AssetGenImage('assets/images/Red_Mountains.png');

  /// File path: assets/images/banner1.png
  AssetGenImage get banner1 => const AssetGenImage('assets/images/banner1.png');

  /// File path: assets/images/banner2.png
  AssetGenImage get banner2 => const AssetGenImage('assets/images/banner2.png');

  /// File path: assets/images/banner3.png
  AssetGenImage get banner3 => const AssetGenImage('assets/images/banner3.png');

  /// File path: assets/images/clock.png
  AssetGenImage get clock => const AssetGenImage('assets/images/clock.png');

  /// File path: assets/images/destination1.png
  AssetGenImage get destination1 =>
      const AssetGenImage('assets/images/destination1.png');

  /// File path: assets/images/destination2.png
  AssetGenImage get destination2 =>
      const AssetGenImage('assets/images/destination2.png');

  /// File path: assets/images/destination3.png
  AssetGenImage get destination3 =>
      const AssetGenImage('assets/images/destination3.png');

  /// File path: assets/images/home_bg.png
  AssetGenImage get homeBg => const AssetGenImage('assets/images/home_bg.png');

  /// File path: assets/images/img2.jpg
  AssetGenImage get img2 => const AssetGenImage('assets/images/img2.jpg');

  /// File path: assets/images/img3.jpg
  AssetGenImage get img3 => const AssetGenImage('assets/images/img3.jpg');

  /// File path: assets/images/img4.jpg
  AssetGenImage get img4 => const AssetGenImage('assets/images/img4.jpg');

  /// File path: assets/images/img5.jpg
  AssetGenImage get img5 => const AssetGenImage('assets/images/img5.jpg');

  /// File path: assets/images/james.png
  AssetGenImage get james => const AssetGenImage('assets/images/james.png');

  /// File path: assets/images/marry.png
  AssetGenImage get marry => const AssetGenImage('assets/images/marry.png');

  /// File path: assets/images/menu.png
  AssetGenImage get menu => const AssetGenImage('assets/images/menu.png');

  /// File path: assets/images/onatriplogo.png
  AssetGenImage get onatriplogo =>
      const AssetGenImage('assets/images/onatriplogo.png');

  /// File path: assets/images/option.png
  AssetGenImage get option => const AssetGenImage('assets/images/option.png');

  /// File path: assets/images/pin.png
  AssetGenImage get pin => const AssetGenImage('assets/images/pin.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/rosy.png
  AssetGenImage get rosy => const AssetGenImage('assets/images/rosy.png');

  /// File path: assets/images/search.png
  AssetGenImage get search => const AssetGenImage('assets/images/search.png');

  /// File path: assets/images/star.png
  AssetGenImage get star => const AssetGenImage('assets/images/star.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        john,
        redMountains,
        banner1,
        banner2,
        banner3,
        clock,
        destination1,
        destination2,
        destination3,
        homeBg,
        img2,
        img3,
        img4,
        img5,
        james,
        marry,
        menu,
        onatriplogo,
        option,
        pin,
        profile,
        rosy,
        search,
        star
      ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/Google.svg
  SvgGenImage get google => const SvgGenImage('assets/svg/Google.svg');

  /// List of all assets
  List<SvgGenImage> get values => [google];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = true;

  final String _assetName;

  final Size? size;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture(
      _isVecFormat
          ? AssetBytesLoader(_assetName,
              assetBundle: bundle, packageName: package)
          : SvgAssetLoader(_assetName,
              assetBundle: bundle, packageName: package),
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
