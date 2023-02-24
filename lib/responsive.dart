class Responsive {
  static const int smallScreenWidth = 240;
  static const int medScreenWidth = 400;
  static const int largeScreenWidth = 600;

  bool isMedScreen(width) {
    return width > smallScreenWidth && width < largeScreenWidth;
  }

  bool isLargeScreen(width) {
    return width > medScreenWidth;
  }
}
