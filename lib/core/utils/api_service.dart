import 'package:dio/dio.dart';

class ApiService {

  final Dio dio = Dio();


  Future<Response> post({required String body,required String url,required String token,String? contentType}) async {
   var response =  await dio.post(url,data: body,
     options: Options(
      headers: {"Authorization": "Bearer $token","Content-Type": contentType }));
      return response;
  }




}