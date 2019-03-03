import 'package:http/http.dart' as http;

class FakeData {
  var publishedOn;
  var headline;

  FakeData(this.publishedOn, this.headline);

  Future<int> fetchPost() async {
     final response = await http.get('https://jsonplaceholder.typicode.com/posts/1');
    
     if(response.statusCode==200)
       return null;

      else
         throw Exception('Failed to load post'); 

  }
}
