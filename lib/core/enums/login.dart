enum Login { sms, email, google, shoppe, facebook }

extension LoginExt on Login {
  String title() {
    switch (this) {
      case Login.sms:
        return "Dang nhap bang mat khau";
      case Login.email:
        return "Dang nhap bang sms";
      case Login.google:
        return "";
      case Login.shoppe:
        return "";
      case Login.facebook:
        return "";
    }
  }
}
