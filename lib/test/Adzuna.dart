import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:visualstudio_test/job/job.dart';

class AdzunaApp extends StatefulWidget {
  const AdzunaApp({super.key});

  @override
  State<AdzunaApp> createState() => _AdzunaAppState();
}

class _AdzunaAppState extends State<AdzunaApp> {
  Future<Job> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    if (response.statusCode == 200) {
      return Job.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
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

  late Future<Job> futureAlbum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: const [Icon(Icons.arrow_back)]),
        body: FutureBuilder<Job>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        color: Colors.red, child: Text('$snapshot.data!.count')),
                  
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return const Text('ddddddddddddddd');
            }
            return const CircularProgressIndicator();
          },
        ));
  }
}
