import 'package:movies_app/core/network/error_message_network.dart';

class ServerException implements Exception{
  final ErrorMessageNetwork errorMessageNetwork;

  const ServerException({required this.errorMessageNetwork});
}