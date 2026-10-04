import 'package:flutter/material.dart';


/// Design tokens for the XO — Tic-Tac-Toe app.
///
/// Source of truth: `handoff/SPEC.md` section 2 and the Figma page
/// "XO Components". Change a value here and the whole app follows.

/// ── Colour ───────────────────────────────────────────────────────────────
class XOColors {
  XOColors._();

  static const Color bg = Color(0xFF0B0D13);
  static const Color surface = Color(0xFF141824);
  static const Color surface2 = Color(0xFF1C2130);
  static const Color line = Color(0xFF272D3E);

  static const Color text = Color(0xFFF3F5FA);
  static const Color muted = Color(0xFF8B94AA);
  static const Color statusText = Color(0xFFC7CDDD);

  /// Player X is blue, Player O is orange. The two differ in hue *and*
  /// lightness, so the board stays readable in greyscale and for every
  /// common colour-vision deficiency.
  static const Color playerX = Color(0xFF6C8CFF);
  static const Color playerO = Color(0xFFFF9F5B);

  static const Color win = Color(0xFF34D399);
  static const Color gold = Color(0xFFFBBF24);
  static const Color primary = Color(0xFF7C5CFF);
  static const Color chip = Color(0xFF3A4258);
  static const Color phone = Color(0xFF05070C);

  /// 14% tints, pre-multiplied as consts so no deprecated opacity helpers
  /// are needed. 0x24 == 36/255 == 14.1%.
  static const Color playerXSoft = Color(0x246C8CFF);
  static const Color playerOSoft = Color(0x24FF9F5B);
  static const Color winSoft = Color(0x2434D399);
  static const Color primarySoft = Color(0x1A7C5CFF);

  // static Color of(Mark mark) => mark == Mark.x ? playerX : playerO;

  // static Color softOf(Mark mark) => mark == Mark.x ? playerXSoft : playerOSoft;
}

/// ── Type ─────────────────────────────────────────────────────────────────
/// Sizes follow the Figma scale: 40 / 28 / 15 / 14 / 13.5 / 12 / 11.
/// `height` is the pixel line height from Figma, expressed as a ratio.
class XOText {
  XOText._();

  static const String family = 'Inter';
  static const List<String> fallback = <String>['Roboto', 'SF Pro Display'];

  static const TextStyle hero = TextStyle(
    fontFamily: family,
    fontFamilyFallback: fallback,
    fontSize: 40,
    fontWeight: FontWeight.w800,
    height: 44 / 40,
    letterSpacing: -1.4,
    color: XOColors.text,
  );

  static const TextStyle title = TextStyle(
    fontFamily: family,
    fontFamilyFallback: fallback,
    fontSize: 28,
    fontWeight: FontWeight.w800,
    height: 34 / 28,
    letterSpacing: -0.8,
    color: XOColors.text,
  );

  static const TextStyle sectionTitle = TextStyle(
    fontFamily: family,
    fontFamilyFallback: fallback,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    height: 20 / 15,
    color: XOColors.text,
  );

  static const TextStyle bodyStrong = TextStyle(
    fontFamily: family,
    fontFamilyFallback: fallback,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 19 / 14,
    color: XOColors.text,
  );

  static const TextStyle body = TextStyle(
    fontFamily: family,
    fontFamilyFallback: fallback,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
    color: XOColors.muted,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: family,
    fontFamilyFallback: fallback,
    fontSize: 13.5,
    fontWeight: FontWeight.w400,
    height: 18 / 13.5,
    color: XOColors.muted,
  );

  static const TextStyle small = TextStyle(
    fontFamily: family,
    fontFamilyFallback: fallback,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 16 / 12,
    color: XOColors.muted,
  );

  /// Uppercase micro label: "PLAYERS", "MODE", "MOVE 4 OF 9".
  static const TextStyle label = TextStyle(
    fontFamily: family,
    fontFamilyFallback: fallback,
    fontSize: 11,
    fontWeight: FontWeight.w700,
    height: 14 / 11,
    letterSpacing: 1.2,
    color: XOColors.muted,
  );

  static const TextStyle score = TextStyle(
    fontFamily: family,
    fontFamilyFallback: fallback,
    fontSize: 22,
    fontWeight: FontWeight.w800,
    height: 26 / 22,
    color: XOColors.text,
  );
}

/// ── Spacing / radii ──────────────────────────────────────────────────────
class XOSpace {
  XOSpace._();

  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;

  /// Left/right margin of every screen.
  static const double gutter = 20;

  /// Gap between board cells.
  static const double boardGap = 10;

  /// Width of the square play area (gutter * 2 subtracted from 368).
  static const double boardWidth = 328;
}

class XORadius {
  XORadius._();

  static const double cell = 24;
  static const double chip = 16;
  static const double small = 12;
  static const double button = 16;
  static const double pill = 999;
}

/// ── Motion ───────────────────────────────────────────────────────────────
class XOMotion {
  XOMotion._();

  /// Mark drop / colour change.
  static const Duration fast = Duration(milliseconds: 180);
  static const Curve curve = Curves.easeOut;

  /// Winning cells flash before the result screen is pushed.
  static const Duration winFlash = Duration(milliseconds: 500);
}

/// ── Theme ────────────────────────────────────────────────────────────────
class AppTheme {
  AppTheme._();

  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: XOColors.surface,
      colorScheme: const ColorScheme.dark(
        primary: XOColors.primary,
        onPrimary: Colors.white,
        secondary: XOColors.playerX,
        surface: XOColors.surface,
        onSurface: XOColors.text,
        error: XOColors.win,
      ),
      textTheme: const TextTheme(
        displayLarge: XOText.hero,
        headlineMedium: XOText.title,
        titleMedium: XOText.sectionTitle,
        bodyMedium: XOText.body,
        bodySmall: XOText.caption,
        labelSmall: XOText.label,
      ),
      splashColor: XOColors.line.withAlpha(64),
      highlightColor: Colors.transparent,
    );
  }
}
