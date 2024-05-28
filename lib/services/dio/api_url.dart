// ignore_for_file: constant_identifier_names

class APIURL {
  static const String BASEURL = "http://172.20.10.5:3600/api/v1";
  static const String CREATEACCOUNT = "$BASEURL/tutor/signup";
  static const String RESENDOTP = "$BASEURL/tutor/resend-otp";
  static const String LOGIN = "$BASEURL/tutor/login";
  static const String VERIFYOTP = "$BASEURL/tutor/verify-otp";
  static const String NEWPASSWORD = "$BASEURL/tutor/forgot-password";
  static const String ADDTUTEE = "$BASEURL/tutee";
  static const String GETTUTEE = "$BASEURL/tutee";
}
