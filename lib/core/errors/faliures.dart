

abstract class Faliure {
  final String errorMessage;

  Faliure({required this.errorMessage});
}


 class ServerFaliure extends Faliure {
  ServerFaliure({required String errorMessage}) : super(errorMessage: errorMessage);  
}