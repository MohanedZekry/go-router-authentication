enum PAGES {
  login,
  home,
  error,
}

extension AppPageExtension on PAGES {

  String get screenPath {
    switch (this) {
      case PAGES.home:
        return "/";
      case PAGES.login:
        return "/login";
      case PAGES.error:
        return "/error";
      default:
        return "/";
    }
  }

  String get screenName {
    switch (this) {
      case PAGES.home:
        return "HOME";
      case PAGES.login:
        return "LOGIN";
      case PAGES.error:
        return "ERROR";
      default:
        return "HOME";
    }
  }

  String get screenTitle {
    switch (this) {
      case PAGES.home:
        return "Home";
      case PAGES.login:
        return "Login";
      case PAGES.error:
        return "Error";
      default:
        return "Home";
    }
  }

}