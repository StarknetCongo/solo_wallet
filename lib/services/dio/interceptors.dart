import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

@immutable
class ApiInterceptor extends Interceptor {
  final Dio dio;
  const ApiInterceptor(this.dio);
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(err.response?.statusCode.toString());
    debugPrint(err.toString());
    switch (err.type) {
      case DioExceptionType.sendTimeout:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
        throw DeadLineExcededException(
          err.requestOptions,
          data: err.response?.data,
        );
      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(
              err.requestOptions,
              data: err.response?.data,
            );
          case 401:
            throw UnauthorizedException(
              err.requestOptions,
              data: err.response?.data,
            );
          case 404:
            throw NotFoundException(
              err.requestOptions,
              data: err.response?.data,
            );
          case 409:
            throw ConflictException(
              err.requestOptions,
              data: err.response?.data,
            );
          case 500:
            throw InternalServerErrorException(
              err.requestOptions,
              data: err.response!.data,
            );
          default:
            throw ValidationInternalServerErrorException(
              err.requestOptions,
              data: err.response?.data,
            );
        }
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.unknown:
        throw UnknownException(requestOptions: err.requestOptions);
      case DioExceptionType.badCertificate:
        throw NoInternetConnectionException(requestOptions: err.requestOptions);

      case DioExceptionType.connectionError:
        throw NoInternetConnectionException(requestOptions: err.requestOptions);
    }
  }
}

class ValidationInternalServerErrorException extends DioException {
  final Map<String, dynamic>? data;
  ValidationInternalServerErrorException(RequestOptions r, {this.data})
      : super(requestOptions: r);

  @override
  String toString() {
    return jsonEncode(data);
  }
}

// if there is a time out, that mean the client don't reach the
// server, throw this exception

class DeadLineExcededException extends DioException {
  final Map<String, dynamic>? data;
  DeadLineExcededException(RequestOptions r, {this.data})
      : super(requestOptions: r);

  @override
  String toString() {
    ErrorData error = ErrorData(dueTo: "unknown");
    return jsonEncode(error.toJson());
  }
}

class BadRequestException extends DioException {
  final Map<String, dynamic>? data;
  BadRequestException(RequestOptions r, {this.data}) : super(requestOptions: r);

  @override
  String toString() {
    return jsonEncode(data);
  }
}

class UnknownException extends DioException {
  UnknownException({required super.requestOptions});

  @override
  String toString() {
    ErrorData error = ErrorData(dueTo: "unknown");
    return jsonEncode(error.toJson());
  }
}

class UnauthorizedException extends DioException {
  final Map<String, dynamic>? data;
  UnauthorizedException(RequestOptions r, {this.data})
      : super(requestOptions: r);

  @override
  String toString() {
    return jsonEncode(data);
  }
}

class NotFoundException extends DioException {
  final Map<String, dynamic>? data;
  NotFoundException(RequestOptions r, {this.data}) : super(requestOptions: r);

  @override
  String toString() {
    return jsonEncode(data);
  }
}

class ConflictException extends DioException {
  final Map<String, dynamic>? data;
  ConflictException(RequestOptions r, {this.data}) : super(requestOptions: r);

  @override
  String toString() {
    return jsonEncode(data);
  }
}

class InternalServerErrorException extends DioException {
  final Map<String, dynamic>? data;
  InternalServerErrorException(RequestOptions r, {this.data})
      : super(requestOptions: r);

  @override
  String toString() {
    return jsonEncode(data);
  }
}

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException({required super.requestOptions});

  @override
  String toString() {
    ErrorData error = ErrorData(dueTo: "connexion");

    return jsonEncode(error.toJson());
  }
}

class ErrorData {
  String? message;
  String? dueTo; // "connexion or unknown"
  ErrorData({this.message, this.dueTo});

  ErrorData.fromJson(Map<String, dynamic> json) {
    message = json['message'] ?? "An error occured";
    dueTo = json['dueTo'];
  }

  Map<String, dynamic> toJson() => {
        "message": message ?? "An error occured",
        "dueTo": dueTo,
      };
}
