import 'package:dio/dio.dart';
import 'package:todo_list/src/models/todo_model.dart';

class TodoRepository {
  late Dio dio;
  final url = 'https://jsonplaceholder.typicode.com/todos';

  // contrutor que só faz uma unica cois
  TodoRepository([Dio? client]) : dio = client ?? Dio();

  // TodoRepository([Dio? client]) {
  //   dio = client ?? Dio();

  //   // mesma coisa
  //   // if (client == null) {
  //   //   dio = Dio();
  //   // }
  //   // else {
  //   //   dio = client;
  //   // }
  // }

  Future<List<TodoModel>> fetchTodos() async {
    final response = await dio.get(url);
    final list = response.data as List;
    return list.map((json) => TodoModel.fromJson(json)).toList();

    // List<TodoModel> todos = [];
    // for(var json in list) {
    //   final todo = TodoModel.fromJson(json);
    //   todos.add(todo);
    // }
    // return todos;
  }
}
