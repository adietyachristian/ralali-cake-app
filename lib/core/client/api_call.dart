import 'dart:io';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

import '../errors/failure.dart';

Future<Either<Failure, T>> apiCall<T>(Future<T> t) async {
  try {
    final futureCall = await t;
    return Right(futureCall);
  } on SocketException {
    return Left(Failure(message: 'No Internet Connection'));
  } on DioException catch (e) {
    return Left(Failure(message: fromDioError(e)));
  } catch (e) {
    return Left(Failure(message: e.toString()));
  }
}

String fromDioError(DioException dioError) {
  switch (dioError.type) {
    case DioExceptionType.cancel:
      return 'Request to API server was cancelled';
    case DioExceptionType.receiveTimeout:
      return 'Receive timeout in connection with API server';
    case DioExceptionType.sendTimeout:
      return 'Send timeout in connection with API server';
    default:
      return 'Permintaan gagal, silahkan coba lagi atau hubungi admin';
  }
}
