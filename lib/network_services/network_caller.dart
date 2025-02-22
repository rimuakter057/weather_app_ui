
import 'dart:convert';
import 'package:http/http.dart';
import 'dart:developer';

 class NetworkResponse{
   int statusCode;
   bool isSuccess;
   Map<String,dynamic> ?responseData;
   String? errorMessage;
   NetworkResponse({required this. statusCode,
     required this.isSuccess, this.responseData,this.errorMessage});

 }


 class NetworkCaller{
 static  Future <NetworkResponse> getRequest(String url)async{
  try{
    Uri uri= Uri.parse(url);
    Response  response = await get(uri);
    if(response.statusCode==200){
      final decodedData=jsonDecode(response.body);
        return NetworkResponse(statusCode: response.statusCode,
          isSuccess: true,
          responseData: decodedData,
        );
    }else{
      return NetworkResponse(statusCode: response.statusCode,
        isSuccess: false,
      );
    }
  }catch(e){
    log("Network error: $e");
    return NetworkResponse(statusCode: -1,
        isSuccess: false);
  }
   }
 }