import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/src/controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  _success() {
    return ListView.builder(
        itemCount: controller.todos.length,
        itemBuilder: (context, index) {
          var todo = controller.todos[index];
          return ListTile(
            leading:
                Checkbox(value: todo.completed, onChanged: (bool? value) {}),
            title: Text(todo.title ?? ''),
          );
        });
  }

  _error() {
    return Center(
        child: ElevatedButton(
            onPressed: () {
              controller.start();
            },
            child: const Text('Tentar Novamente')));
  }

  _loading() {
    return Center(child: CircularProgressIndicator());
  }

  _start() {
    return Container();
  }

  @override
  void initState() {
    super.initState();
    controller.start();
  }

  stateManagment(HomeState state) {
    switch (state) {
      case HomeState.start:
        return _start();
      case HomeState.loading:
        return _loading();
      case HomeState.error:
        return _error();
      case HomeState.success:
        return _success();
      default:
        return _start();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List todo\'s'),
          actions: [
            IconButton(
                onPressed: () {
                  controller.start();
                },
                icon: const Icon(Icons.refresh_outlined))
          ],
        ),
        body: AnimatedBuilder(
            animation: controller.state,
            builder: (context, child) {
              return stateManagment(controller.state.value);
            }));
  }
}
