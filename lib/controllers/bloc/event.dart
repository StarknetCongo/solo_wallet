import 'package:flutter/material.dart' show immutable;

abstract class AppEvent {}

@immutable
class REsendOtpCode implements AppEvent {
  final Map<String, dynamic> data;
  const REsendOtpCode({required this.data});
}

@immutable
class LoginEvent implements AppEvent {
  final Map<String, dynamic> data;
  const LoginEvent({required this.data});
}

@immutable
class NewPasswordEvent implements AppEvent {
  final Map<String, dynamic> data;

  const NewPasswordEvent({
    required this.data,
  });
}

@immutable
class VerifyOTPEvent implements AppEvent {
  final Map<String, dynamic> data;
  const VerifyOTPEvent({required this.data});
}

@immutable
class CreateAccount implements AppEvent {
  final Map<String, dynamic> data;
  const CreateAccount({required this.data});
}

@immutable
class SaveTutee implements AppEvent {
  final Map<String, dynamic> data;
  const SaveTutee({required this.data});
}

@immutable
class InitState implements AppEvent {}

@immutable
class GetTutee implements AppEvent {}
