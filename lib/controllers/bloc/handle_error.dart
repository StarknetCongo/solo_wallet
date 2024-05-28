import 'dart:convert';
import 'package:cups/controllers/bloc/state.dart';
import 'package:cups/services/dio/interceptors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

hundleError({required Exception e, required Emitter<AppState> emit}) {
  bool isCobizCustomException = e is ValidationInternalServerErrorException ||
      e is DeadLineExcededException ||
      e is BadRequestException ||
      e is UnauthorizedException ||
      e is NotFoundException ||
      e is ConflictException ||
      e is InternalServerErrorException ||
      e is NoInternetConnectionException;
  debugPrint(e.toString());
  if (isCobizCustomException) {
    Map<String, dynamic> data = jsonDecode(e.toString());
    ErrorData errormodele = ErrorData.fromJson(data);

    emit(
      ERROR(
        dueTo: errormodele,
      ),
    );
  } else {
    ErrorData errormodel = ErrorData();
    ErrorData(
      message: "Une erreur s'est produite veuillez ressayer plustard",
    );
    emit(
      ERROR(
        dueTo: errormodel,
      ),
    );
  }
}
