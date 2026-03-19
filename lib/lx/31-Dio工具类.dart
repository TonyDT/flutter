



import 'package:dio/dio.dart';

void main(List<String>args){

  // DioUtils()
}

//封装一个工具类
class DioUtils {
  final Dio _dio  = Dio();//内部dio实例对象
  DioUtils(){
    //做基本的操作
    //配置基础地址和超时时间
    // _dio.options.baseUrl = "https://geekitheima.net/v1_0";
    // _dio.options.connectTimeout = Duration(seconds: 10);//连接超时
    // _dio.options.sendTimeout = Duration(seconds: 10);//发送超时
    // _dio.options.receiveTimeout = Duration(seconds: 10);//接收超时
    //简写连续复制的写法
    _dio.options..baseUrl = "https://geekitheima.net/v1_0"
      ..connectTimeout = Duration(seconds: 10)
      ..sendTimeout = Duration(seconds: 10)
      ..receiveTimeout = Duration(seconds: 10);

    //拦截器
    _addInterceptor();//注册添加拦截器
  }
  _addInterceptor(){
    _dio.interceptors.add(InterceptorsWrapper(
      //请求拦截器
      onRequest: (context,handler){
        // handler.next(requestOptions)//放过请求
        // handler.reject(error)拦截请求
        handler.next(context);
      },
      //响应拦截器
      onResponse: (context,handler){
        //http状态码 2xx成功 3 4 5
        // handler.reject(error)
        if(context.statusCode! >= 200 && context.statusCode! < 300){
          handler.next(context);
          return;
        }
        //说明出了异常
        handler.reject(DioException(requestOptions: context.requestOptions));
        //抛出异常


      },
      //错误拦截器
      onError:(context,handler){
        handler.reject(context);
      },
    ));
  }
  //向外暴露一个get方法
  get(String url,Map<String,dynamic>? params){
    return  _dio.get(url,queryParameters: params);
  }
}