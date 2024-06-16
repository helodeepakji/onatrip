class AppException implements Exception {
  final String? _message;
  final String? _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return "${_prefix ?? ""}${_message ?? ""}";
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message);
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message);
}

class UnauthorisedException extends AppException {
  UnauthorisedException([String? message]) : super(message);
}

class TimeoutException extends AppException {
  TimeoutException([String? message]) : super(message);
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message);
}

class LocalDatabaseError extends AppException {
  LocalDatabaseError([String? message]) : super(message);
}

class InternalServerException extends AppException {
  InternalServerException([String? message]) : super(message);
}
