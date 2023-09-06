import 'package:equatable/equatable.dart';

class ErrorMessageNetwork extends Equatable {
  final int statusCode;
  final String statusMessage;
  final bool success;

  const ErrorMessageNetwork(
      {required this.statusCode,
      required this.statusMessage,
      required this.success});

  factory ErrorMessageNetwork.fromJson(Map<String, dynamic> json) {
    return ErrorMessageNetwork(
        statusCode: json['statusCode'],
        statusMessage: json['statusMessage'],
        success: json['success']);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        statusCode,
        statusMessage,
        success,
      ];
}
