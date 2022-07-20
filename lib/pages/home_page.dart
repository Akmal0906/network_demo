import 'package:flutter/material.dart';


import '../model/post_model.dart';
import '../services/http_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
static const String id='home_page';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? data;
  // void _apiNetwork(){
  //   Network.GET(Network.API_LIST,Network.paramsEmpty()).then((response) => {
  //     print(response),
  //     _showdata(response!),
  //   });
  // }
  // void _apiCreatePost(Post post){
  //   Network.POST(Network.API_CREATE,Network.paramsCreate(post)).then((response) => {
  //     print(response),
  //     _showdata(response!),
  //   });
  // }
  void _apiUpdatePost(Post post){
    Network.PUT(Network.API_UPDATE+post.id.toString(),Network.paramsUpdate(post)).then((response) => {
      print(response),
      _showdata(response!),
    });
  }
  void _showdata(String response){
    setState(() {
      data = response;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var post=Post(id: 1,body: 'tana',userId: 1,title: 'sarlavha');
    _apiUpdatePost(post);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Text (data!=null ? '$data':'no data'),
      ),
    );
  }
}
