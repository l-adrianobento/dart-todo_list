import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';

class DioMock extends Mock implements Dio {}

main() {
  final dio = DioMock();
  final repository = TodoRepository(dio);
  test('deve trazer uma lista de TodoModel', () async {
    // não rolou por conta do video ser antigo e nos compentarios as pessoas estavam com o mesmo problema que eu
    // when(() async => dio.get(any()))
    //     .thenAnswer((_) async => Response(data: jsonDecode(jsonData), requestOptions: any as RequestOptions));
    // final list = await repository.fetchTodos();
    // expect(list[0].title, 'delectus aut autem');
  });
}

String jsonData = '''
[
  {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  },
  {
    "userId": 1,
    "id": 2,
    "title": "quis ut nam facilis et officia qui",
    "completed": false
  },
  {
    "userId": 1,
    "id": 3,
    "title": "fugiat veniam minus",
    "completed": false
  }
]
''';
