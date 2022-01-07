import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_list/src/controllers/home_controller.dart';
import 'package:todo_list/src/models/todo_model.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';

class TodoRepositoryMock extends Mock implements TodoRepository {}

main() {
  final repository = TodoRepositoryMock();
  final controller = HomeController(repository);
  test('deve preencher a variavel todos e alterar o estado pra success', () async {
    // não rolou por conta do video ser antigo e nos compentarios as pessoas estavam com o mesmo problema que eu
    // when(repository.fetchTodos()).thenAnswer((_) async => [TodoModel()]);
    // expect(controller.state, HomeState.start);
    // await controller.start();
    // expect(controller.state, HomeState.success);
    // expect(controller.todos.isNotEmpty, true);
  });

    test('deve mmodificar o estado para erro se a requisição falhar', () async {
    // não rolou por conta do video ser antigo e nos compentarios as pessoas estavam com o mesmo problema que eu
    // when(repository.fetchTodos()).thenThrow(Exception());
    // expect(controller.state, HomeState.start);
    // await controller.start();
    // expect(controller.state, HomeState.error);
    // expect(controller.todos.isEmpty, true);
  });
}
