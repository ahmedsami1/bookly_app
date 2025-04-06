import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure(errorMessage: 'Connection Timeout');
      case DioExceptionType.sendTimeout:
        return const ServerFailure(errorMessage: 'Send Timeout');
      case DioExceptionType.receiveTimeout:
        return const ServerFailure(errorMessage: 'Receive Timeout');
      case DioExceptionType.badCertificate:
        return const ServerFailure(errorMessage: 'Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return const ServerFailure(errorMessage: 'Request Canceled');
      case DioExceptionType.connectionError:
        return const ServerFailure(errorMessage: 'Connection Error');
      case DioExceptionType.unknown:
        if(dioError.message!.contains('SocketException')) {
          return const ServerFailure(errorMessage: 'No Internet Connection');
        }
        return const ServerFailure(errorMessage: 'Unexpected Error');
      }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response ['error'] ['message'] ?? 'Error');
    }else if (statusCode == 404) {
      return const ServerFailure(errorMessage: 'Not Found');
    } else if (statusCode == 500) {
      return const ServerFailure(errorMessage: 'Internal Server Error, please try later!');
    }else {
      return const ServerFailure(errorMessage: 'Opps there was an error, please try later!');
    }
  }
}
