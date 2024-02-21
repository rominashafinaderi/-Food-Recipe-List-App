import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
Future<Album> fetchAlbum() async {
  final response=  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  if(response.statusCode ==200){
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  }else {
    throw Exception('Failed to load album');
  }
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    fetchAlbum();
  }
  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }
  late Future<Album> futureAlbum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(actions:[Icon(Icons.arrow_back)]),
    body:FutureBuilder<Album>(
      future: futureAlbum,
      builder:(context,snapshot){
        if(snapshot.hasData){
          return Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
          
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.red,
                  child: Text(snapshot.data!.title)),
              
                Text('$snapshot.data!.userId'),
                Text('$snapshot.data!.user'),
          
              ],
            ),
          );
        }else if(snapshot.hasError){
          return Text('ddddddddddddddd');
        }
      return CircularProgressIndicator();

    } ,));
  }
}


//Album class
class Album{ 
  final int id;
  final int userId;
  final String title;
  Album({
    required this.userId,
    required this.id,
    required this.title
  });
  factory Album.fromJson(Map<String,dynamic> json){
    return switch (json){
      {
        'userId': int userId,
        'id': int id,
        'title': String title,
      }=>
      Album(id: id,
      userId:userId,
      title:title),
      _ => throw const FormatException('failed'),
    };

  }
}