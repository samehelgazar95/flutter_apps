import 'dart:convert';
// import 'dart:io';
import 'dart:async';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchData() async {
  var res = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
  );

  if (res.statusCode == 200) {
    return jsonDecode(res.body) as Map<String, dynamic>;
  } else {
    throw Exception("FailedToLoadAlbum");
  }
}

void main() async {
  Map<String, dynamic> readyData = await fetchData();
  print(readyData);

  Future<Map<String, dynamic>> data = fetchData();
  Map<String, dynamic> awaitedData = await data;
  print(awaitedData);
  // Or
  data
      .then((res) {
        print(res);
      })
      .catchError((err) {
        print(err);
      });

  //   http
  //       .get(Uri.parse('https://jsonplaceholder.typicode.com/alrums/1'))
  //       .then((res) {
  //         print("Status Code: ${res.statusCode}");
  //         print("Body: ${res.body}");
  //         print("Headers: ${res.headers}");

  //         if (res.statusCode == 200) {
  //           print(jsonDecode(res.body));
  //         } else {
  //           throw Error();
  //         }
  //       })
  //       .catchError((err) {
  //         if (err is HttpException) {
  //           print("HttpException: ${err.message}");
  //         } else if (err is SocketException) {
  //           print("SocketException ${err.message}");
  //         } else {
  //           print("Error: $err");
  //         }
  //       });
}
