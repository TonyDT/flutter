



import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String>args){

  runApp(MainPage());
}
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //发起网络请求
    _getchannels();//获取频道数据
  }
  // https://geek.itheima.net/v1_0/channels
  List<Map<String,dynamic>> _list = [];
  void _getchannels() async{
    DioUtils utils = DioUtils();//创建实例化对象
    Response<dynamic> reslut= await utils.get("channels");
    Map<String,dynamic>res = reslut.data as Map<String,dynamic>;
    List data = res["data"]["channels"] as List;
    _list = data.cast<Map<String,dynamic>>() as List<Map<String,dynamic>>;
    setState(() {

    });
    print(_list);
  //   channels是一个后端支持前端跨域访问的接口。

  }
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("频道管理")),
          body:GridView.extent(
            padding: EdgeInsets.all(10),
            maxCrossAxisExtent: 140,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3,
            children: List.generate(_list.length, (index){
              return ChannelItem(item: _list[index],);
            }),
          ),

        ),
    );
  }
}
// 用来绘制每个频道的UI内容
class ChannelItem extends StatelessWidget {
  final Map<String,dynamic>item;
  const ChannelItem({super.key,required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
        alignment: Alignment.center,

        child:Text(item["name"] ?? "空",style: TextStyle(color: Colors.white),),
    );
  }
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
    _dio.options..baseUrl = "https://geek.itheima.net/v1_0/"
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
  get(String url,{Map<String,dynamic>? params}){
    return  _dio.get(url,queryParameters: params);
  }
}